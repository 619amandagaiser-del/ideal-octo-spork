<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#0b0e14">
<title>Gaming Hub</title>
<style>
:root{color-scheme:dark;--bg:#0b0e14;--surface:#121720;--surface-2:#171e29;--surface-3:#202a37;--ink:#f3f5f8;--muted:#98a3b3;--line:#293342;--lime:#c5f36b;--lime-ink:#17200d;--violet:#9b83ff;--pink:#ff6f9f;--orange:#ff9b63;--cyan:#69d6d3;--shadow:0 18px 50px rgba(0,0,0,.24);box-sizing:border-box;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}
*{box-sizing:border-box}
html{scroll-padding-top:24px;scroll-behavior:smooth}
body{margin:0;background:radial-gradient(ellipse at 82% 0%,rgba(127,95,232,.13),transparent 34%),radial-gradient(ellipse at 6% 32%,rgba(72,133,164,.08),transparent 30%),var(--bg);color:var(--ink);font-family:Inter,"Segoe UI",system-ui,-apple-system,sans-serif;line-height:1.45;min-height:100vh}
button,input,select{font:inherit}
button{cursor:pointer}
button:focus-visible,input:focus-visible,select:focus-visible{outline:3px solid var(--lime);outline-offset:3px}
.wrap{width:min(1440px,100%);margin:0 auto;padding:28px clamp(18px,4vw,58px) 64px}
.topbar{display:flex;align-items:center;justify-content:space-between;gap:24px;margin-bottom:32px}
.brand{display:flex;align-items:center;gap:13px;min-width:0}
.brand-mark{width:44px;height:44px;display:grid;place-items:center;border-radius:15px;color:var(--lime);background:linear-gradient(145deg,#222b38,#151b25);border:1px solid #354052;box-shadow:inset 0 1px rgba(255,255,255,.08);font-size:21px}
.eyebrow{margin:0 0 2px;color:var(--muted);font-size:.68rem;font-weight:800;letter-spacing:.19em;text-transform:uppercase}
h1{font-size:1.42rem;line-height:1.15;margin:0;font-weight:780;letter-spacing:-.035em}
.top-actions{display:flex;align-items:center;justify-content:flex-end;gap:10px;flex-wrap:wrap}
.controller{display:flex;align-items:center;gap:8px;padding:9px 12px;color:var(--muted);font-size:.8rem;border:1px solid var(--line);border-radius:99px;background:rgba(18,23,32,.74)}
.pulse{width:7px;height:7px;background:#657181;border-radius:50%;box-shadow:0 0 0 4px rgba(101,113,129,.12)}
.controller.live{color:var(--lime)}.controller.live .pulse{background:var(--lime);box-shadow:0 0 0 4px rgba(197,243,107,.12)}
.button{display:inline-flex;align-items:center;justify-content:center;gap:8px;border:1px solid var(--line);border-radius:11px;padding:10px 15px;background:var(--surface-2);color:var(--ink);font-weight:650;transition:transform .18s ease,border-color .18s ease,background .18s ease}
.button:hover{transform:translateY(-1px);border-color:#536174;background:var(--surface-3)}
.button.primary{background:var(--lime);border-color:var(--lime);color:var(--lime-ink);box-shadow:0 6px 22px rgba(197,243,107,.13)}
.button.primary:hover{background:#d5ff85;border-color:#d5ff85}
.button.ghost{background:rgba(13,17,24,.55)}
.icon-button{width:40px;height:40px;padding:0;border-radius:12px;background:rgba(18,23,32,.8);border:1px solid rgba(255,255,255,.12);color:white;font-size:1.15rem;display:grid;place-items:center;transition:background .18s ease,transform .18s ease}
.icon-button:hover{background:rgba(255,255,255,.14);transform:translateY(-1px)}
.toolbar{display:flex;align-items:center;gap:14px;margin-bottom:23px}
.search-wrap{position:relative;flex:1;min-width:180px}
.search-icon{position:absolute;left:15px;top:50%;transform:translateY(-50%);color:#8290a2;font-size:1.15rem;pointer-events:none}
#q{width:100%;height:46px;border:1px solid var(--line);border-radius:13px;padding:0 52px 0 44px;background:rgba(18,23,32,.84);color:var(--ink);transition:border-color .2s,box-shadow .2s}
#q::placeholder{color:#7d8999}
#q:focus{border-color:#829d54;box-shadow:0 0 0 4px rgba(197,243,107,.08);outline:none}
.key-hint{position:absolute;right:12px;top:50%;transform:translateY(-50%);font-size:.69rem;color:#8f9bac;border:1px solid #394453;background:#1c2531;padding:2px 6px;border-radius:5px}
.tabs{display:flex;gap:4px;padding:4px;border:1px solid var(--line);border-radius:13px;background:rgba(18,23,32,.72);flex:none}
.tabs button{border:0;background:transparent;color:var(--muted);font-size:.83rem;font-weight:650;padding:8px 13px;border-radius:9px;transition:color .18s,background .18s}
.tabs button:hover{color:var(--ink)}
.tabs button[aria-pressed=true]{background:#293443;color:var(--ink);box-shadow:inset 0 1px rgba(255,255,255,.06)}
.spotlight{position:relative;min-height:326px;overflow:hidden;border:1px solid #384252;border-radius:22px;background:linear-gradient(110deg,#1c2831 0%,#222738 54%,#2e2452 100%);box-shadow:var(--shadow);isolation:isolate}
.spotlight:before{content:"";position:absolute;z-index:-1;width:440px;height:440px;right:12%;top:-150px;border:1px solid rgba(255,255,255,.08);border-radius:50%;box-shadow:0 0 0 38px rgba(255,255,255,.025),0 0 0 92px rgba(255,255,255,.02),0 0 0 152px rgba(255,255,255,.015)}
.spotlight:after{content:"";position:absolute;z-index:-1;width:440px;height:310px;right:-4%;bottom:-190px;background:rgba(158,124,255,.34);filter:blur(80px);border-radius:50%}
.spotlight-inner{position:relative;z-index:1;display:flex;align-items:center;min-height:326px;padding:clamp(25px,5vw,58px);max-width:720px}
.spot-copy{max-width:540px}
.spot-label{display:flex;align-items:center;gap:9px;margin:0 0 13px;color:#d2d8e1;font-size:.72rem;font-weight:800;letter-spacing:.16em;text-transform:uppercase}
.spot-label .spark{color:var(--lime);font-size:1.1rem}
.spot-title{font-size:clamp(2rem,4.2vw,3.35rem);line-height:.98;letter-spacing:-.055em;margin:0 0 12px;font-weight:820;max-width:550px}
.spot-desc{color:#bdc5d1;margin:0 0 23px;font-size:.99rem;max-width:440px}
.spot-actions{display:flex;align-items:center;gap:10px;flex-wrap:wrap}
.spot-meta{display:flex;align-items:center;gap:10px;margin-top:22px;color:#aeb8c7;font-size:.81rem}
.tag{display:inline-flex;align-items:center;padding:5px 9px;border:1px solid rgba(255,255,255,.17);border-radius:99px;background:rgba(8,12,18,.2);font-size:.75rem;color:#d9dee6}
.spot-art{position:absolute;z-index:0;right:clamp(16px,9vw,130px);top:50%;transform:translateY(-52%) rotate(-8deg);width:215px;height:215px;display:grid;place-items:center;font-size:8rem;filter:drop-shadow(0 24px 25px rgba(0,0,0,.36));pointer-events:none}
.spot-art:before{content:"";position:absolute;inset:8px;border:1px solid rgba(255,255,255,.12);border-radius:50%;box-shadow:0 0 0 19px rgba(255,255,255,.025),0 0 55px rgba(197,243,107,.09)}
.spot-art span{position:relative;z-index:1;animation:float 5s ease-in-out infinite}
.spot-art.tone-2:before{box-shadow:0 0 0 19px rgba(255,255,255,.025),0 0 55px rgba(255,111,159,.17)}
.spot-art.tone-3:before{box-shadow:0 0 0 19px rgba(255,255,255,.025),0 0 55px rgba(105,214,211,.15)}
.collection-stats{display:grid;grid-template-columns:repeat(3,1fr);gap:1px;margin-top:18px;overflow:hidden;border:1px solid var(--line);border-radius:16px;background:var(--line)}
.stat{padding:15px 18px;background:rgba(18,23,32,.88)}
.stat strong{display:block;font-size:1.15rem;letter-spacing:-.03em}
.stat span{display:block;margin-top:2px;color:var(--muted);font-size:.75rem}
.section-head{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin:35px 0 14px}
.section-head h2{margin:0;font-size:1.17rem;letter-spacing:-.025em}
.section-head p{margin:4px 0 0;color:var(--muted);font-size:.82rem}
.section-note{color:var(--muted);font-size:.78rem}
.row{display:flex;gap:13px;overflow-x:auto;padding:2px 1px 10px;scrollbar-width:thin;scrollbar-color:#394352 transparent}
.grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(190px,1fr));gap:15px}
.tile{position:relative;display:block;width:100%;padding:0;overflow:hidden;text-align:left;border:1px solid var(--line);border-radius:16px;background:var(--surface);color:var(--ink);transition:transform .2s ease,border-color .2s ease,box-shadow .2s ease}
.tile:hover{transform:translateY(-4px);border-color:#566b48;box-shadow:0 14px 28px rgba(0,0,0,.22)}
.row .tile{flex:0 0 190px;width:190px}
.art{height:134px;position:relative;overflow:hidden;display:flex;align-items:center;justify-content:center;font-size:3.5rem;background:linear-gradient(135deg,#313c50,#252c40)}
.art:before{content:"";position:absolute;width:130px;height:130px;right:-20px;top:-52px;border:1px solid rgba(255,255,255,.2);border-radius:50%;box-shadow:0 0 0 15px rgba(255,255,255,.045),0 0 0 38px rgba(255,255,255,.03)}
.art:after{content:"";position:absolute;left:-28px;bottom:-92px;width:155px;height:155px;border-radius:50%;background:rgba(255,255,255,.1);filter:blur(2px)}
.art .icon{z-index:1;filter:drop-shadow(0 8px 12px rgba(0,0,0,.3));transition:transform .25s ease}
.tile:hover .art .icon{transform:scale(1.12) rotate(-5deg)}
.art.tone-1{background:linear-gradient(135deg,#254747,#254765 48%,#33315c)}
.art.tone-2{background:linear-gradient(135deg,#692f4c,#4f345e 55%,#2f3d60)}
.art.tone-3{background:linear-gradient(135deg,#62552c,#514146 52%,#343252)}
.art.tone-4{background:linear-gradient(135deg,#28505d,#315b58 48%,#424865)}
.art.tone-5{background:linear-gradient(135deg,#44396e,#5b3b67 52%,#2e455e)}
.art.tone-6{background:linear-gradient(135deg,#6b4137,#574153 55%,#333957)}
.badge{position:absolute;z-index:2;left:11px;top:11px;padding:4px 8px;border:1px solid rgba(255,255,255,.17);border-radius:99px;background:rgba(10,13,19,.45);backdrop-filter:blur(8px);color:#f2f4f7;font-size:.68rem;font-weight:750;letter-spacing:.02em}
.fav{position:absolute;z-index:2;right:11px;top:8px;color:var(--lime);font-size:1.18rem;text-shadow:0 2px 6px rgba(0,0,0,.5)}
.meta{position:relative;z-index:2;padding:11px 13px 13px}
.meta b{display:block;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;font-size:.91rem;font-weight:720}
.meta span{display:block;margin-top:3px;color:var(--muted);font-size:.77rem;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.empty{grid-column:1/-1;padding:40px 22px;border:1px dashed #3b4654;border-radius:16px;text-align:center;color:var(--muted);background:rgba(18,23,32,.45)}
.empty strong{display:block;color:var(--ink);font-size:1rem;margin-bottom:5px}
.empty button{margin-top:15px}
.controller-hint{margin-top:13px;color:#8b96a5;font-size:.75rem}
dialog{width:min(440px,calc(100vw - 28px));padding:0;border:1px solid #414b5b;border-radius:20px;background:#151b24;color:var(--ink);box-shadow:0 30px 90px rgba(0,0,0,.55)}
dialog::backdrop{background:rgba(4,7,12,.72);backdrop-filter:blur(5px)}
.dlg{padding:23px}
.dlg h2{margin:0;font-size:1.24rem;letter-spacing:-.025em}
.dlg .art{height:142px;border-radius:14px;margin-bottom:15px}
.dlg label{display:block;margin:14px 0 6px;color:#bdc5d1;font-size:.82rem;font-weight:650}
.dlg input,.dlg select{width:100%;min-height:42px;padding:9px 12px;border:1px solid #394554;border-radius:10px;background:#0f141c;color:var(--ink)}
.dlg input::placeholder{color:#728094}
.dlg .sub{color:var(--muted);font-size:.88rem}
.actions{display:flex;gap:8px;flex-wrap:wrap;margin-top:18px}
.actions .button{flex:1 1 auto}
.lk{display:inline-flex;align-items:center;justify-content:center;text-decoration:none;font-weight:650;border:1px solid var(--line);border-radius:11px;padding:10px 15px;color:var(--ink);background:var(--surface-2)}
.lk[aria-disabled=true]{opacity:.4;pointer-events:none}
.toast{position:fixed;z-index:10;left:50%;bottom:calc(22px + env(safe-area-inset-bottom,0px));transform:translate(-50%,15px);background:#eef3e6;color:#19200f;padding:10px 16px;border-radius:99px;box-shadow:var(--shadow);font-size:.85rem;font-weight:650;opacity:0;pointer-events:none;transition:opacity .2s,transform .2s}
.toast.on{opacity:1;transform:translate(-50%,0)}
.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border:0}
@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-10px)}}
@media(max-width:800px){.wrap{padding-top:20px}.topbar{align-items:flex-start;margin-bottom:24px}.top-actions{gap:7px}.controller{font-size:.73rem}.spotlight{min-height:300px}.spotlight-inner{min-height:300px;max-width:70%;padding:30px}.spot-art{right:1%;font-size:6.5rem;width:170px;height:170px}.grid{grid-template-columns:repeat(auto-fill,minmax(160px,1fr))}}
@media(max-width:600px){.wrap{padding:17px 14px 40px}.topbar{gap:14px}.brand-mark{width:39px;height:39px}.top-actions{gap:7px}.controller{order:3;width:100%;justify-content:center}.top-actions .button{padding:9px 11px;font-size:.82rem}.toolbar{align-items:stretch;flex-direction:column;gap:10px;margin-bottom:17px}.tabs{width:100%;justify-content:space-between}.tabs button{flex:1;padding:8px 5px;font-size:.78rem}.spotlight{min-height:370px}.spotlight-inner{min-height:370px;align-items:flex-end;max-width:100%;padding:25px 21px}.spotlight:before{right:-110px;top:-165px}.spot-art{top:28%;right:5%;width:145px;height:145px;font-size:6rem;transform:translateY(-50%) rotate(-8deg)}.spot-copy{max-width:100%}.spot-title{font-size:2.35rem}.spot-desc{font-size:.9rem;margin-bottom:17px}.spot-meta{margin-top:15px}.collection-stats{margin-top:12px}.stat{padding:12px 10px}.stat strong{font-size:1rem}.stat span{font-size:.68rem}.section-head{margin-top:29px}.grid{grid-template-columns:repeat(2,minmax(0,1fr));gap:10px}.tile{border-radius:13px}.art{height:112px}.meta{padding:9px 10px 11px}.row .tile{flex-basis:165px;width:165px}.row .art{height:112px}}
@media(prefers-reduced-motion:reduce){*,*:before,*:after{scroll-behavior:auto!important;animation:none!important;transition:none!important}}
</style>
</head>
<body>
<main class="wrap">
  <header class="topbar">
    <div class="brand"><div class="brand-mark" aria-hidden="true">✦</div><div><p class="eyebrow">Your personal arcade</p><h1>Gaming Hub</h1></div></div>
    <div class="top-actions">
      <span class="controller" id="controllerState"><i class="pulse"></i><span id="padState">No controller detected</span></span>
      <button class="button ghost" id="browseBtn"><span aria-hidden="true">↗</span> Browse</button>
      <button class="button ghost" id="dcBtn"><span aria-hidden="true">◉</span> Discord</button>
      <button class="button primary" id="addBtn"><span aria-hidden="true">＋</span> Add to hub</button>
    </div>
  </header>

  <div class="toolbar">
    <div class="search-wrap"><label for="q" class="sr-only">Search your library</label><span class="search-icon" aria-hidden="true">⌕</span><input type="search" id="q" placeholder="Find a game or app…" autocomplete="off"><span class="key-hint">/</span></div>
    <div class="tabs" id="tabs" role="group" aria-label="Filter library">
      <button data-f="all" aria-pressed="true">Everything</button>
      <button data-f="game" aria-pressed="false">Games</button>
      <button data-f="app" aria-pressed="false">Apps</button>
      <button data-f="fav" aria-pressed="false">★ Saved</button>
    </div>
  </div>

  <section id="spotlight" class="spotlight" aria-label="Continue playing"></section>
  <section class="collection-stats" id="collectionStats" aria-label="Collection overview"></section>
  <p class="controller-hint" id="padHint" style="display:none">Controller ready · D-pad to move · A to select · B to go back · Y to save · LB/RB to switch filters</p>

  <section id="recentWrap">
    <div class="section-head"><div><h2>Pick up where you left off</h2><p>Your recent sessions, ready when you are.</p></div><span class="section-note">RECENTLY PLAYED</span></div>
    <div class="row" id="recent" aria-label="Recently played"></div>
  </section>

  <section aria-labelledby="libTitle">
    <div class="section-head"><div><h2 id="libTitle">Your library</h2><p id="libCaption">Everything you play, together in one place.</p></div><span class="section-note" id="libraryCount"></span></div>
    <div class="grid" id="grid"></div>
  </section>
</main>

<dialog id="detail"><div class="dlg" id="detailBody"></div></dialog>
<dialog id="add"><div class="dlg">
  <h2>Add to your hub</h2><p class="sub">Keep your favorite games and apps close by.</p>
  <label for="nName">Name</label><input type="text" id="nName" maxlength="40" placeholder="e.g. Hollow Knight">
  <label for="nType">Type</label><select id="nType"><option value="game">Game</option><option value="app">App</option></select>
  <label for="nGenre">Genre or category</label><input type="text" id="nGenre" maxlength="24" placeholder="e.g. Adventure, Chat, Music">
  <label for="nUrl">Web link <span style="font-weight:400;color:#8290a2">(optional; opens outside Gaming Hub)</span></label><input type="text" id="nUrl" placeholder="https://">
  <label for="nIcon">Icon <span style="font-weight:400;color:#8290a2">(emoji)</span></label><input type="text" id="nIcon" maxlength="4" value="🎮">
  <div class="actions"><button class="button primary" id="saveNew">Add to library</button><button class="button" id="cancelNew">Cancel</button></div>
</div></dialog>
<dialog id="dc"><div class="dlg">
  <h2>Play together</h2><p class="sub" id="dcState"></p>
  <p class="sub">Share what you’re playing with your friends.</p>
  <label for="dInv">Discord server invite</label><input type="text" id="dInv" placeholder="https://discord.gg/yourcode">
  <label for="dMsg">Message preview</label><input type="text" id="dMsg" readonly>
  <div class="actions"><button class="button primary" id="dCopy">Copy message</button><a class="lk" id="dOpen" target="_blank" rel="noopener noreferrer" aria-disabled="true">Open server</a><button class="button" id="dClose">Close</button></div>
  <p class="sub" style="font-size:.78rem;margin-top:14px">Play updates your Discord status while the Discord app is running.</p>
</div></dialog>
<dialog id="browse"><div class="dlg">
  <h2>Browse the web</h2><p class="sub">Your address will open in Windows’ default browser.</p>
  <label for="browseUrl">Website address</label><input type="text" id="browseUrl" inputmode="url" autocomplete="url" placeholder="https://example.com">
  <div class="actions"><button class="button primary" id="browseOpen">Open in browser</button><button class="button" id="browseCancel">Cancel</button></div>
</div></dialog>
<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>
var items=[
 {id:1,name:"Starfall Runner",type:"game",genre:"Arcade",icon:"🚀",fav:true,hours:12,last:5},
 {id:2,name:"Tiny Kingdoms",type:"game",genre:"Strategy",icon:"🏰",fav:false,hours:34,last:3},
 {id:3,name:"Pixel Racers",type:"game",genre:"Racing",icon:"🏎️",fav:true,hours:8,last:4},
 {id:4,name:"Word Orchard",type:"game",genre:"Puzzle",icon:"🍎",fav:false,hours:21,last:1},
 {id:5,name:"Dungeon Dice",type:"game",genre:"Role-playing",icon:"🎲",fav:false,hours:17,last:0},
 {id:6,name:"Party Chat",type:"app",genre:"Voice chat",icon:"🎧",fav:true,hours:40,last:2},
 {id:7,name:"Clip Capture",type:"app",genre:"Recording",icon:"🎬",fav:false,hours:6,last:0},
 {id:8,name:"Friends List",type:"app",genre:"Social",icon:"👥",fav:false,hours:11,last:0},
 {id:9,name:"Lichess",type:"game",genre:"Chess in your browser",icon:"♟️",fav:false,hours:0,last:0,url:"https://lichess.org"},
 {id:10,name:"Wikipedia",type:"app",genre:"Reference",icon:"📚",fav:false,hours:0,last:0,url:"https://www.wikipedia.org"},
 {id:"discord-jjs-pack",name:"The JJS pack",type:"app",genre:"Discord server",icon:"💬",fav:false,hours:0,last:0,url:"https://discord.com/channels/1543864842299899985"}
];
var state={filter:"all",q:"",nextId:11,clock:6};
try{var s=localStorage.getItem("gaminghub");if(s){var d=JSON.parse(s);if(d&&d.items){items=d.items;state.nextId=d.nextId||100;state.clock=d.clock||10}}}catch(e){}
function save(){try{localStorage.setItem("gaminghub",JSON.stringify({items:items,nextId:state.nextId,clock:state.clock}))}catch(e){}}
var jjsShortcut={id:"discord-jjs-pack",name:"The JJS pack",type:"app",genre:"Discord server",icon:"💬",fav:false,hours:0,last:0,url:"https://discord.com/channels/1543864842299899985"};
try{if(localStorage.getItem("gaminghub-migration-jjs-pack")!=="1"){if(!items.some(function(i){return i.id===jjsShortcut.id}))items.push(jjsShortcut);localStorage.setItem("gaminghub-migration-jjs-pack","1");save()}}catch(e){if(!items.some(function(i){return i.id===jjsShortcut.id}))items.push(jjsShortcut)}
function $(id){return document.getElementById(id)}
function esc(t){return String(t).replace(/[&<>\"]/g,function(c){return{"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;"}[c]})}
function toast(m){var t=$("toast");t.textContent=m;t.className="toast on";setTimeout(function(){t.className="toast"},1900)}
function tone(it){return "tone-"+(Math.abs(Number(it.id)||0)%6+1)}
function tile(it){
 return '<button class="tile" data-id="'+esc(it.id)+'" aria-label="'+esc(it.name)+', '+esc(it.genre)+(it.fav?', saved':'')+'"><div class="art '+tone(it)+'"><span class="badge">'+(it.type==="game"?"Game":"App")+'</span>'+(it.fav?'<span class="fav" aria-label="Saved">★</span>':'')+'<span class="icon" aria-hidden="true">'+esc(it.icon)+'</span></div><div class="meta"><b>'+esc(it.name)+'</b><span>'+esc(it.genre)+(it.hours?" · "+it.hours+" hrs":"")+'</span></div></button>';
}
function primaryItem(){
 var played=items.filter(function(i){return i.last>0}).sort(function(a,b){return b.last-a.last})[0];
 return played||items.filter(function(i){return i.type==="game"}).sort(function(a,b){return b.hours-a.hours})[0]||items[0];
}
function renderSpotlight(){
 var it=primaryItem();if(!it){$("spotlight").hidden=true;return}
 $("spotlight").hidden=false;
 var intro=it.last>0?"Your last session is waiting for you.":"Your next favorite could be right here.";
 $("spotlight").innerHTML='<div class="spotlight-inner"><div class="spot-copy"><p class="spot-label"><span class="spark">✦</span> Continue your adventure</p><h2 class="spot-title">'+esc(it.name)+'</h2><p class="spot-desc">'+esc(intro)+' Jump back into '+esc(it.genre.toLowerCase())+' and keep the momentum going.</p><div class="spot-actions"><button class="button primary" id="spotPlay"><span aria-hidden="true">▶</span> '+(it.type==="game"?"Play now":"Open app")+'</button><button class="icon-button" id="spotFav" aria-label="'+(it.fav?"Remove from saved":"Save to favorites")+'" title="'+(it.fav?"Remove from saved":"Save to favorites")+'">'+(it.fav?"★":"☆")+'</button></div><div class="spot-meta"><span class="tag">'+(it.type==="game"?"GAME":"APP")+'</span><span>'+esc(it.genre)+'</span>'+(it.hours?'<span>·</span><span>'+it.hours+' hours played</span>':'')+'</div></div></div><div class="spot-art '+tone(it)+'" aria-hidden="true"><span>'+esc(it.icon)+'</span></div>';
 $("spotPlay").onclick=function(){openDetail(it.id)};
 $("spotFav").onclick=function(){it.fav=!it.fav;save();render();toast(it.fav?"Saved to favorites":"Removed from favorites")};
}
function render(){
 var q=state.q.toLowerCase();
 var list=items.filter(function(i){
  if(state.filter==="game"&&i.type!=="game")return false;
  if(state.filter==="app"&&i.type!=="app")return false;
  if(state.filter==="fav"&&!i.fav)return false;
  return !q||(i.name+" "+i.genre).toLowerCase().indexOf(q)>-1;
 });
 $("grid").innerHTML=list.length?list.map(tile).join(""):'<div class="empty"><strong>No matches yet</strong>Try another search, or add something new to your hub.<br><button class="button" id="emptyAdd">＋ Add a game or app</button></div>';
 var rec=items.filter(function(i){return i.last>0}).sort(function(a,b){return b.last-a.last}).slice(0,5);
 $("recentWrap").hidden=!!(q||state.filter!=="all")||!rec.length;
 $("recent").innerHTML=rec.map(tile).join("");
 $("spotlight").hidden=!!(q||state.filter!=="all");
 $("collectionStats").hidden=!!(q||state.filter!=="all");
 if(!q&&state.filter==="all")renderSpotlight();
 var games=items.filter(function(i){return i.type==="game"}).length,apps=items.length-games,favs=items.filter(function(i){return i.fav}).length,hours=items.reduce(function(n,i){return n+(Number(i.hours)||0)},0);
 $("collectionStats").innerHTML='<div class="stat"><strong>'+items.length+'</strong><span>in your library</span></div><div class="stat"><strong>'+hours+' hrs</strong><span>time well spent</span></div><div class="stat"><strong>'+favs+' saved</strong><span>'+games+' games · '+apps+' apps</span></div>';
 $("libTitle").textContent=q||state.filter!=="all"?"Search your library":"Your library";
 $("libCaption").textContent=q||state.filter!=="all"?"Showing the things that match your filters.":"Everything you play, together in one place.";
 $("libraryCount").textContent=list.length+(list.length===1?" ITEM":" ITEMS");
 var ea=$("emptyAdd");if(ea)ea.onclick=function(){$("add").showModal();$("nName").focus()};
}
function find(id){return items.filter(function(i){return i.id==id})[0]}
function webAddress(value){
 var raw=String(value||"").trim();if(!raw)return null;
 if(!/^[a-z][a-z0-9+.-]*:/i.test(raw))raw="https://"+raw;
 try{var url=new URL(raw);return url.protocol==="http:"||url.protocol==="https:"?url.href:null}catch(e){return null}
}
async function openUrlExternally(value){
 try{
  var url=new URL(String(value));if(url.protocol!=="http:"&&url.protocol!=="https:")return false;
  if(window.hub&&window.hub.openExternal){var result=await window.hub.openExternal(url.href);return !!(result&&result.ok)}
  return !!window.open(url.href,"_blank","noopener,noreferrer");
 }catch(e){return false}
}
function openDetail(id){
 var it=find(id);if(!it)return;
 $("detailBody").innerHTML='<div class="art '+tone(it)+'"><span class="icon" aria-hidden="true">'+esc(it.icon)+'</span></div><h2>'+esc(it.name)+'</h2><p class="sub">'+esc(it.genre)+' · '+it.hours+' hours played</p><div class="actions"><button class="button primary" id="go">▶ '+(it.type==="game"?"Play":"Open")+'</button><button class="button" id="fv">'+(it.fav?"★ Saved":"☆ Save favorite")+'</button><button class="button" id="sh">Share</button><button class="button" id="rm">Remove</button><button class="button" id="cl">Close</button></div>';
 $("go").onclick=async function(){it.last=++state.clock;if(window.hub&&window.hub.setPresence)window.hub.setPresence(it.name,it.type).catch(function(){});save();render();$("detail").close();if(it.url){var opened=await openUrlExternally(it.url);toast(opened?"Opening "+it.name+" outside Gaming Hub":"That web link could not be opened")}else toast((it.type==="game"?"Launching ":"Opening ")+it.name)};
 $("fv").onclick=function(){it.fav=!it.fav;save();render();$("detail").close();toast(it.fav?"Saved to favorites":"Removed from favorites")};
 $("rm").onclick=function(){items=items.filter(function(x){return x.id!==it.id});save();render();$("detail").close();toast("Removed "+it.name)};
 $("cl").onclick=function(){$("detail").close()};
 $("sh").onclick=function(){copyText(shareMsg(it),"Message copied. Paste it in Discord.")};
 $("detail").showModal();
}
document.addEventListener("click",function(e){var t=e.target.closest(".tile");if(t)openDetail(t.getAttribute("data-id"))});
$("q").oninput=function(e){state.q=e.target.value;render()};
$("tabs").onclick=function(e){var b=e.target.closest("button");if(!b)return;state.filter=b.getAttribute("data-f");[].forEach.call($("tabs").children,function(x){x.setAttribute("aria-pressed",x===b)});render()};
document.addEventListener("keydown",function(e){if(e.key==="/"&&!e.ctrlKey&&!e.metaKey&&!e.altKey&&!/INPUT|TEXTAREA|SELECT/.test(document.activeElement.tagName)){e.preventDefault();$("q").focus()}if(e.key==="Escape"&&document.activeElement===$("q")){$("q").blur()}});
$("addBtn").onclick=function(){$("add").showModal();$("nName").focus()};
$("cancelNew").onclick=function(){$("add").close()};
$("saveNew").onclick=function(){
 var n=$("nName").value.trim();if(!n){toast("Enter a name first");$("nName").focus();return}
 items.unshift({id:state.nextId++,name:n,type:$("nType").value,genre:$("nGenre").value.trim()||"Uncategorized",icon:$("nIcon").value.trim()||"🎮",fav:false,hours:0,last:0,url:/^https?:\/\//i.test($("nUrl").value.trim())?$("nUrl").value.trim():""});
 $("nName").value="";$("nGenre").value="";$("nUrl").value="";save();render();$("add").close();toast("Added "+n);
};
var invite="";try{invite=localStorage.getItem("gaminghubdc")||""}catch(e){}
function validInv(v){return /^https:\/\/(discord\.gg|discord\.com\/invite)\/[\w-]+/i.test(v)}
function shareMsg(it){return "Want to play "+it.name+"? Join me"+(invite?": "+invite:" on Discord.")}
function copyText(t,ok){
 var done=function(){toast(ok)};
 var fb=function(){try{var a=document.createElement("textarea");a.value=t;document.body.appendChild(a);a.select();var r=document.execCommand("copy");document.body.removeChild(a);r?done():toast("Copy blocked. Select the text and copy it.")}catch(e){toast("Copy blocked. Select the text and copy it.")}};
 try{navigator.clipboard.writeText(t).then(done,fb)}catch(e){fb()}
}
function dcUpdate(){
 var r=items.filter(function(i){return i.last>0}).sort(function(a,b){return b.last-a.last})[0];
 $("dMsg").value=r?shareMsg(r):"Add a game first.";
 var o=$("dOpen");if(validInv(invite)){o.href=invite;o.setAttribute("aria-disabled","false")}else{o.removeAttribute("href");o.setAttribute("aria-disabled","true")}
}
$("dcBtn").onclick=function(){if(window.hub&&window.hub.presenceStatus)window.hub.presenceStatus().then(function(s){$("dcState").textContent=String((s&&s.msg)||"")}).catch(function(){});$("dInv").value=invite;dcUpdate();$("dc").showModal()};
$("dInv").oninput=function(e){invite=e.target.value.trim();try{localStorage.setItem("gaminghubdc",invite)}catch(x){}dcUpdate()};
$("dCopy").onclick=function(){copyText($("dMsg").value,"Message copied. Paste it in Discord.")};
$("dClose").onclick=function(){$("dc").close()};
$("browseBtn").onclick=function(){$("browse").showModal();$("browseUrl").focus()};
$("browseCancel").onclick=function(){$("browse").close()};
$("browseOpen").onclick=async function(){
 var target=webAddress($("browseUrl").value);if(!target){toast("Enter a valid http or https address");$("browseUrl").focus();return}
 var opened=await openUrlExternally(target);if(opened){$("browse").close();toast("Opening in your browser")}else toast("That address could not be opened")
};
$("browseUrl").addEventListener("keydown",function(e){if(e.key==="Enter")$("browseOpen").click()});

var pad={last:{},t:0,on:false};
function navs(){var d=document.querySelector("dialog[open]");return [].slice.call((d||document).querySelectorAll(d?"button,input,select":".tile,#spotPlay,#spotFav,#tabs button,#addBtn,#dcBtn,#browseBtn"))}
function move(dx,dy){
 var l=navs();if(!l.length)return;var cur=document.activeElement;
 if(l.indexOf(cur)<0){l[0].focus();return}
 var r=cur.getBoundingClientRect(),cx=r.left+r.width/2,cy=r.top+r.height/2,best=null,bd=1e9;
 l.forEach(function(el){if(el===cur)return;var q=el.getBoundingClientRect(),ex=q.left+q.width/2-cx,ey=q.top+q.height/2-cy;if(dx&&ex*dx<=0)return;if(dy&&ey*dy<=0)return;var d=dx?Math.abs(ex)+2*Math.abs(ey):Math.abs(ey)+2*Math.abs(ex);if(d<bd){bd=d;best=el}});
 if(best){best.focus();best.scrollIntoView({block:"nearest"})}
}
function press(n){
 var d=document.querySelector("dialog[open]"),a=document.activeElement;
 if(n===0){if(a&&a!==document.body)a.click();else{var l=navs();if(l[0])l[0].focus()}}
 else if(n===1){if(d)d.close()}
 else if(n===3&&!d){var t=a&&a.closest?a.closest(".tile"):null,it=t&&find(t.getAttribute("data-id"));if(it){it.fav=!it.fav;save();render();var nt=document.querySelector('#grid .tile[data-id="'+it.id+'"]');if(nt)nt.focus();toast(it.fav?"Saved to favorites":"Removed from favorites")}}
 else if((n===4||n===5)&&!d){var bs=[].slice.call($("tabs").children),i=0;bs.forEach(function(b,k){if(b.getAttribute("aria-pressed")==="true")i=k});bs[(i+(n===5?1:bs.length-1))%bs.length].click()}
}
function poll(){
 var gps=navigator.getGamepads?navigator.getGamepads():[],g=null;for(var i=0;i<gps.length;i++){if(gps[i]){g=gps[i];break}}
 if(!g){pad.on=false;$("padState").textContent="No controller detected";$("controllerState").classList.remove("live");$("padHint").style.display="none";return}
 var b=function(n){return g.buttons[n]&&g.buttons[n].pressed},x=g.axes[0]||0,y=g.axes[1]||0;
 var dx=(b(15)||x>.6)?1:(b(14)||x<-.6)?-1:0,dy=(b(13)||y>.6)?1:(b(12)||y<-.6)?-1:0,now=performance.now();
 if((dx||dy)&&now-pad.t>200){pad.t=now;move(dx,dy)}
 [0,1,3,4,5].forEach(function(n){var p=!!b(n);if(p&&!pad.last[n])press(n);pad.last[n]=p});requestAnimationFrame(poll);
}
function startPad(){if(pad.on)return;pad.on=true;$("padState").textContent="Controller connected";$("controllerState").classList.add("live");$("padHint").style.display="block";toast("Controller connected");requestAnimationFrame(poll)}
window.addEventListener("gamepadconnected",startPad);
window.addEventListener("gamepaddisconnected",function(){pad.on=false;setTimeout(poll,50)});
render();
</script>
</body>
</html>
