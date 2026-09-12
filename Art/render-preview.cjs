// Usage: node Art/render-preview.cjs (playwright and sharp available through NODE_PATH).
const fs=require('node:fs'),path=require('node:path'),http=require('node:http');
const {chromium}=require('playwright'),sharp=require('sharp');
const root=path.resolve(__dirname,'..');
const mime={'.html':'text/html','.json':'application/json','.png':'image/png','.xml':'application/xml','.md':'text/plain'};
const server=http.createServer((req,res)=>{
  const file=path.resolve(root,'.'+decodeURIComponent(req.url.split('?')[0]));
  if(!file.startsWith(root+path.sep)) {res.writeHead(403).end();return;}
  fs.readFile(file,(err,data)=>{if(err){res.writeHead(404).end();return;}res.setHeader('Content-Type',mime[path.extname(file)]||'text/plain');res.end(data);});
});
const luminance=rgb=>rgb.map(v=>v/255).map(v=>v<=.04045?v/12.92:((v+.055)/1.055)**2.4).reduce((s,v,i)=>s+v*[.2126,.7152,.0722][i],0);
const rgb=hex=>hex.slice(1).match(/../g).map(v=>parseInt(v,16));
const contrast=(a,b)=>(Math.max(a,b)+.05)/(Math.min(a,b)+.05);
(async()=>{
  await new Promise(r=>server.listen(0,'127.0.0.1',r));
  let browser;
  try {
    browser=await chromium.launch({executablePath:process.env.CHROME_PATH||'C:/Program Files/Google/Chrome/Application/chrome.exe',headless:true});
    const page=await browser.newPage({viewport:{width:896,height:504},deviceScaleFactor:1});
    await page.goto(`http://127.0.0.1:${server.address().port}/Art/preview.html`);
    const settings=await page.evaluate(()=>window.previewReady);
    const rects=await page.evaluate(()=>Object.fromEntries(['title-first','title-second','suffix','tag','summary','version'].map(id=>{
      const el=document.getElementById(id),r=el.getBoundingClientRect();return [id,{x:r.x,y:r.y,width:r.width,height:r.height,color:getComputedStyle(el).color}];
    })));
    const cdp=await page.context().newCDPSession(page);
    await cdp.send('DOM.enable'); await cdp.send('CSS.enable');
    const {root:doc}=await cdp.send('DOM.getDocument');
    const fonts={};
    for(const id of Object.keys(rects)) {
      const {nodeId}=await cdp.send('DOM.querySelector',{nodeId:doc.nodeId,selector:'#'+id});
      fonts[id]=(await cdp.send('CSS.getPlatformFontsForNode',{nodeId})).fonts;
    }
    const final=path.join(root,'Mod/About/Preview.png');
    const buffer=await page.screenshot();
    await sharp(buffer).png({compressionLevel:9}).toFile(final);
    await sharp(buffer).resize(268).png().toFile(path.join(__dirname,'preview-268.png'));
    await page.evaluate(()=>document.body.classList.add('background-only'));
    const background=await page.screenshot();
    await sharp(background).png({compressionLevel:9}).toFile(path.join(__dirname,'preview-background.png'));
    const {data,info}=await sharp(background).removeAlpha().raw().toBuffer({resolveWithObject:true});
    const results={};
    for(const [id,r] of Object.entries(rects)) {
      const ink=luminance(rgb(settings.palette[id==='suffix'||id==='tag'?'inkSecondary':id==='version'?'badgeInk':'inkPrimary']));
      let min=Infinity,point=null;
      if(id==='version'){min=contrast(ink,luminance(rgb(settings.palette.accent)));}
      else for(let y=Math.floor(r.y);y<Math.ceil(r.y+r.height);y++) for(let x=Math.floor(r.x);x<Math.ceil(r.x+r.width);x++) {
        const i=(y*info.width+x)*info.channels,c=contrast(ink,luminance([...data.subarray(i,i+3)]));
        if(c<min){min=c;point={x,y};}
      }
      results[id]={minimumContrast:min,point,pass:min>=4.5};
    }
    const bytes=fs.statSync(final).size;
    const report={date:new Date().toISOString(),settings,dimensions:{width:896,height:504},bytes,rects,fonts,contrast:results,
      method:'Minimum over every pixel in each full text bounding rectangle on a second render with text hidden; badge against its opaque accent. CDP reports actual fonts.',
      pass:bytes<900000&&Object.values(results).every(r=>r.pass)&&Object.values(fonts).every(list=>list.length&&list.every(f=>/^Segoe UI(?: Semibold)?$/.test(f.familyName)))};
    fs.writeFileSync(path.join(__dirname,'preview-qa.json'),JSON.stringify(report,null,2)+'\n');
    console.log(JSON.stringify({bytes,contrast:results,fonts,pass:report.pass},null,2));
    if(!report.pass) process.exitCode=1;
  } finally {if(browser)await browser.close();server.close();}
})().catch(e=>{console.error(e);server.close();process.exitCode=1;});
