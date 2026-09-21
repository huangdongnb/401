---
layout: null
title: 我国第七次人口普查的100m分辨率人口栅格数据
description: 2020年中国第七次人口普查100米人口栅格数据，含数据来源、制作流程、技术信息、科研应用、使用须知、局限性、引用与下载。
importance: 1
category: 人口相关数据
series: 人口空间分布与人口栅格数据
data_format: tif栅格数据
access: 免费获取
permalink: /population-grid-2020/
---
<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="2020年中国第七次人口普查100米人口栅格数据科研使用说明：数据来源、方法、精度、局限、处理流程、引用与下载。">
  <meta name="theme-color" content="#07182b">
  <title>2020中国100米人口栅格数据｜科研使用说明</title>
  <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64'%3E%3Crect width='64' height='64' rx='13' fill='%23eeeeec'/%3E%3Cg fill='%23757572'%3E%3Crect x='12' y='12' width='11' height='11'/%3E%3Crect x='27' y='12' width='11' height='11' opacity='.72'/%3E%3Crect x='42' y='12' width='10' height='11' opacity='.42'/%3E%3Crect x='12' y='27' width='11' height='11' opacity='.48'/%3E%3Crect x='27' y='27' width='11' height='11' fill='%234b4b49'/%3E%3Crect x='42' y='27' width='10' height='11' opacity='.72'/%3E%3Crect x='12' y='42' width='11' height='10' opacity='.26'/%3E%3Crect x='27' y='42' width='11' height='10' opacity='.46'/%3E%3Crect x='42' y='42' width='10' height='10'/%3E%3C/g%3E%3C/svg%3E">
  <style>
    :root{--ink:#132238;--muted:#66778d;--paper:#f5f8fb;--white:#fff;--navy:#07182b;--blue:#175ea8;--cyan:#36d0d6;--gold:#f3b54a;--line:#dce5ee;--soft:#eaf3f8;--red:#e65b53;--shadow:0 18px 50px rgba(13,41,69,.12);--radius:22px}
    *{box-sizing:border-box}html{scroll-behavior:smooth;scroll-padding-top:90px}body{margin:0;background:var(--paper);color:var(--ink);font-family:"Inter","Noto Sans SC","Microsoft YaHei",system-ui,sans-serif;font-size:16px;line-height:1.72}a{color:inherit}button,a{touch-action:manipulation}.wrap{width:min(1320px,calc(100% - 64px));margin:auto}
    .topbar{position:sticky;top:0;z-index:30;height:70px;background:rgba(7,24,43,.94);backdrop-filter:blur(18px);color:#fff;border-bottom:1px solid rgba(255,255,255,.1)}.topbar .wrap{height:100%;display:flex;align-items:center;justify-content:space-between;gap:24px}.brand{display:flex;align-items:center;gap:12px;text-decoration:none;font-weight:760;letter-spacing:.02em}.mark{display:grid;grid-template-columns:repeat(3,7px);gap:3px}.mark i{width:7px;height:7px;background:var(--cyan)}.mark i:nth-child(5){background:var(--gold)}.mark i:nth-child(3),.mark i:nth-child(7){opacity:.45}.nav{display:flex;align-items:center;gap:4px}.nav a{color:#c8d4df;text-decoration:none;padding:8px 11px;border-radius:10px;font-size:.9rem}.nav a:hover,.nav a:focus-visible{color:#fff;background:rgba(255,255,255,.08)}
    .hero{position:relative;overflow:hidden;background:var(--navy);color:#fff;min-height:610px}.hero:before{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(7,24,43,1) 0%,rgba(7,24,43,.92) 42%,rgba(7,24,43,.2) 100%),radial-gradient(circle at 16% 10%,rgba(54,208,214,.16),transparent 35%)}.hero-grid{position:relative;min-height:610px;display:grid;grid-template-columns:1.05fr .95fr;align-items:center;gap:40px}.eyebrow{display:inline-flex;align-items:center;gap:9px;padding:7px 11px;border:1px solid rgba(54,208,214,.35);background:rgba(54,208,214,.08);border-radius:999px;color:#9be9eb;font-size:.78rem;letter-spacing:.12em}.eyebrow:before{content:"";width:7px;height:7px;border-radius:50%;background:var(--cyan);box-shadow:0 0 15px var(--cyan)}h1{font-size:clamp(2.7rem,5.3vw,5.35rem);line-height:1.04;letter-spacing:-.045em;margin:22px 0 22px;max-width:770px}h1 span{color:var(--cyan)}.lead{font-size:1.08rem;color:#c9d6e1;max-width:680px;margin:0 0 32px}.actions{display:flex;flex-wrap:wrap;gap:12px}.btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:13px 18px;border-radius:12px;border:1px solid transparent;text-decoration:none;font-weight:720;cursor:pointer;font:inherit}.btn.primary{background:var(--cyan);color:#06212d}.btn.primary:hover{background:#5de1e5}.btn.ghost{border-color:rgba(255,255,255,.2);color:#fff;background:rgba(255,255,255,.04)}.btn.ghost:hover{background:rgba(255,255,255,.1)}.map-stage{position:relative;min-height:470px}.map-stage img{position:absolute;width:min(730px,65vw);right:-110px;top:12px;filter:saturate(.75) contrast(1.12);mix-blend-mode:screen;opacity:.92}.map-stage:after{content:"100 m";position:absolute;right:4px;bottom:26px;font-size:8.5rem;line-height:1;font-weight:800;letter-spacing:-.08em;color:rgba(255,255,255,.07)}.map-note{position:absolute;right:10px;top:62px;padding:10px 14px;border:1px solid rgba(255,255,255,.13);background:rgba(7,24,43,.74);border-radius:12px;color:#d9e4ed;font-size:.82rem}.quick-stats{position:absolute;left:0;bottom:28px;display:grid;grid-template-columns:repeat(3,1fr);width:min(570px,100%);border-top:1px solid rgba(255,255,255,.18)}.quick-stats div{padding:14px 16px 0 0}.quick-stats b{display:block;font-size:1.4rem;color:#fff;line-height:1.2}.quick-stats small{color:#88a0b5;font-size:.75rem}
    .section{padding:92px 0}.section.white{background:#fff}.section.dark{background:#091d32;color:#fff}.section-head{display:grid;grid-template-columns:240px 1fr;gap:36px;margin-bottom:40px}.kicker{color:var(--blue);font-weight:760;letter-spacing:.12em;font-size:.78rem;text-transform:uppercase}.dark .kicker{color:var(--cyan)}h2{font-size:clamp(2rem,3.8vw,3.5rem);letter-spacing:-.04em;line-height:1.12;margin:0;max-width:820px}.intro{color:var(--muted);font-size:1.05rem;max-width:810px;margin:16px 0 0}.dark .intro{color:#b4c4d1}.meta-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}.meta-card{background:#fff;border:1px solid var(--line);border-radius:16px;padding:22px 18px;min-height:142px}.meta-card .icon{font-size:1.35rem;margin-bottom:20px}.meta-card strong{display:block;font-size:1.15rem}.meta-card span{display:block;color:var(--muted);font-size:.82rem;margin-top:4px}.callout{margin-top:18px;padding:18px 21px;background:#ecf8f7;border-left:4px solid #24a8aa;border-radius:0 14px 14px 0;color:#325967}.callout.warn{background:#fff7e6;border-color:var(--gold);color:#6e5422}
    .method{display:grid;grid-template-columns:1fr 72px 1fr 72px 1fr 72px 1fr;align-items:stretch;margin-top:44px}.step{border:1px solid rgba(255,255,255,.13);background:rgba(255,255,255,.035);border-radius:18px;padding:23px}.step b{display:inline-grid;place-items:center;width:34px;height:34px;border-radius:10px;background:rgba(54,208,214,.13);color:var(--cyan);margin-bottom:30px}.step h3{margin:0 0 9px;font-size:1.08rem}.step p{margin:0;color:#9fb2c2;font-size:.9rem}.arrow{display:grid;place-items:center;color:#4b7088;font-size:1.6rem}.model-tags{display:flex;flex-wrap:wrap;gap:8px;margin-top:14px}.tag{padding:4px 8px;border:1px solid rgba(255,255,255,.15);border-radius:7px;color:#d2e0ea;font-size:.74rem}.score-row{display:grid;grid-template-columns:1.1fr .9fr;gap:18px;margin-top:26px}.score-main{background:var(--cyan);color:#06222f;border-radius:18px;padding:26px}.score-main strong{font-size:3.7rem;line-height:1;letter-spacing:-.06em}.score-main span{display:block;font-weight:750;margin-top:7px}.score-list{display:grid;grid-template-columns:repeat(2,1fr);gap:12px}.score-list div{padding:17px;border:1px solid rgba(255,255,255,.13);border-radius:16px}.score-list b{display:block;font-size:1.38rem}.score-list span{color:#9fb2c2;font-size:.78rem}
    .content-grid{display:grid;grid-template-columns:minmax(0,1.45fr) minmax(320px,.55fr);gap:28px}.panel{background:#fff;border:1px solid var(--line);border-radius:var(--radius);padding:30px}.panel h3{font-size:1.28rem;margin:0 0 18px}.data-table{width:100%;border-collapse:collapse}.data-table th,.data-table td{text-align:left;vertical-align:top;padding:14px 12px;border-top:1px solid var(--line)}.data-table th{width:160px;color:#52677d;font-size:.82rem}.data-table td{font-size:.94rem}.data-table tr:first-child th,.data-table tr:first-child td{border-top:0}.checklist{margin:0;padding:0;list-style:none}.checklist li{position:relative;padding:13px 0 13px 29px;border-top:1px solid var(--line)}.checklist li:first-child{border-top:0}.checklist li:before{content:"✓";position:absolute;left:0;top:13px;color:#139596;font-weight:900}.mini-note{font-size:.82rem;color:var(--muted);margin:18px 0 0}.legend{display:flex;gap:12px;align-items:center;font-size:.78rem;color:var(--muted);margin-top:12px}.gradient{width:100px;height:8px;border-radius:99px;background:linear-gradient(90deg,#427dbf,#78a7ce,#e8ddc1,#ed8161,#d93d3d)}
    .gallery{display:grid;grid-template-columns:1.25fr .75fr;gap:16px;margin-top:26px}.gallery figure{position:relative;margin:0;background:#06121e;border-radius:18px;overflow:hidden;min-height:360px}.gallery .small{display:grid;grid-template-rows:1fr 1fr;gap:16px}.gallery .small figure{min-height:172px}.gallery img{width:100%;height:100%;object-fit:cover;display:block;filter:saturate(.86)}.gallery figcaption{position:absolute;left:14px;bottom:14px;background:rgba(7,24,43,.82);backdrop-filter:blur(8px);color:#fff;padding:8px 11px;border-radius:9px;font-size:.78rem;border:1px solid rgba(255,255,255,.15)}
    .use-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:14px}.use-card{background:#fff;border:1px solid var(--line);border-radius:17px;padding:24px}.use-card .num{font-size:.76rem;color:var(--blue);font-weight:800;letter-spacing:.1em}.use-card h3{margin:18px 0 8px;font-size:1.08rem}.use-card p{margin:0;color:var(--muted);font-size:.9rem}.fit-table{margin-top:22px;display:grid;grid-template-columns:1fr 1fr;border:1px solid var(--line);border-radius:18px;overflow:hidden}.fit-col{padding:26px;background:#fff}.fit-col+ .fit-col{border-left:1px solid var(--line);background:#fffaf1}.fit-col h3{margin:0 0 14px}.fit-col ul{margin:0;padding-left:20px;color:var(--muted)}
    .rules{counter-reset:rule;display:grid;grid-template-columns:repeat(2,1fr);gap:14px}.rule{counter-increment:rule;background:#fff;border:1px solid var(--line);border-radius:17px;padding:22px 23px;display:grid;grid-template-columns:42px 1fr;gap:14px}.rule:before{content:counter(rule,decimal-leading-zero);font-weight:850;color:var(--blue)}.rule h3{margin:0 0 4px;font-size:1rem}.rule p{margin:0;color:var(--muted);font-size:.9rem}.rule.danger{border-color:#f0d0cc;background:#fffafa}.rule.danger:before{color:var(--red)}
    .uncertainty{display:grid;grid-template-columns:.8fr 1.2fr;gap:26px}.limit-list{display:grid;gap:10px}.limit{padding:18px;border:1px solid rgba(255,255,255,.13);border-radius:14px;background:rgba(255,255,255,.03)}.limit b{display:block;color:#fff;margin-bottom:4px}.limit span{font-size:.86rem;color:#a7bac8}.research-note{border-radius:22px;background:#fff;color:var(--ink);padding:31px}.research-note h3{font-size:1.45rem;margin:0 0 14px}.research-note p{color:var(--muted)}.research-note ol{padding-left:22px;margin-bottom:0}.research-note li{padding:5px 0}
    .citation{display:grid;grid-template-columns:1fr 1fr;gap:18px}.cite-box{border:1px solid var(--line);border-radius:18px;background:#fff;padding:25px}.cite-box h3{margin:0 0 14px}.cite-text{font-family:ui-monospace,SFMono-Regular,Consolas,monospace;font-size:.82rem;line-height:1.65;background:#f3f6f9;border-radius:12px;padding:15px;overflow:auto;min-height:160px;white-space:pre-wrap}.copy-btn{margin-top:12px;border:1px solid var(--line);background:#fff;padding:9px 12px;border-radius:9px;font-weight:680;cursor:pointer}.copy-btn:hover{border-color:#91a8bd}.copy-btn.done{color:#0b7f80;border-color:#83cccd;background:#edfafa}
    .download{padding:100px 0;background:linear-gradient(150deg,#061729,#0b2945);color:#fff}.download-grid{display:grid;grid-template-columns:1.05fr .95fr;gap:28px}.download h2{margin-bottom:14px}.download p{color:#afc1cf;max-width:690px}.download-card{border:1px solid rgba(255,255,255,.14);background:rgba(255,255,255,.045);border-radius:20px;padding:24px}.download-card+.download-card{margin-top:13px}.download-card .top{display:flex;justify-content:space-between;gap:14px;align-items:flex-start}.download-card h3{margin:0 0 5px}.download-card small{color:#91a8ba}.download-card .pill{font-size:.72rem;padding:4px 8px;border-radius:99px;background:rgba(54,208,214,.12);color:#7fe5e8;border:1px solid rgba(54,208,214,.23)}.download-card .pill.pending{background:rgba(243,181,74,.12);color:#ffd68a;border-color:rgba(243,181,74,.24)}.download-card .btn{margin-top:18px}.btn.disabled{opacity:.55;cursor:not-allowed;border-color:rgba(255,255,255,.13);color:#cfdae3;background:rgba(255,255,255,.03)}.appendix{border-left:3px solid var(--gold);padding-left:18px;margin-top:20px;color:#ccd9e3}.appendix b{color:#fff}.footer{background:#04111f;color:#8297aa;padding:32px 0;font-size:.82rem}.footer .wrap{display:flex;justify-content:space-between;gap:20px;flex-wrap:wrap}.footer a{color:#b8c8d4}.source-note{max-width:800px}.menu-btn{display:none;background:none;border:1px solid rgba(255,255,255,.2);color:#fff;border-radius:9px;padding:7px 10px}
    @media(max-width:1050px){.nav{display:none}.menu-btn{display:block}.hero-grid{grid-template-columns:1fr}.map-stage{position:absolute;inset:90px -200px auto 45%;opacity:.42}.hero-copy{position:relative;z-index:2;padding:80px 0 130px}.quick-stats{bottom:30px}.meta-grid{grid-template-columns:repeat(3,1fr)}.method{grid-template-columns:1fr 45px 1fr}.method .arrow:nth-of-type(2),.method .arrow:nth-of-type(3){display:none}.method .step:nth-of-type(n+3){margin-top:14px}.content-grid,.uncertainty,.download-grid{grid-template-columns:1fr}.gallery{grid-template-columns:1fr}.use-grid{grid-template-columns:repeat(2,1fr)}}
    @media(max-width:700px){.wrap{width:min(100% - 32px,1320px)}.topbar{height:62px}.brand span{font-size:.9rem}.hero,.hero-grid{min-height:620px}.hero-copy{padding:65px 0 170px}.map-stage{left:10%;right:-280px;top:155px}.map-stage:after{font-size:5rem;right:210px;bottom:80px}.map-note{display:none}.quick-stats{grid-template-columns:repeat(3,1fr)}.quick-stats b{font-size:1.05rem}.quick-stats small{font-size:.68rem}.section{padding:68px 0}.section-head{grid-template-columns:1fr;gap:8px}.meta-grid{grid-template-columns:repeat(2,1fr)}.meta-card{min-height:125px}.method{grid-template-columns:1fr}.arrow{height:34px;transform:rotate(90deg)}.method .arrow:nth-of-type(2),.method .arrow:nth-of-type(3){display:grid}.method .step:nth-of-type(n+3){margin-top:0}.score-row,.score-list,.citation,.rules,.fit-table{grid-template-columns:1fr}.fit-col+ .fit-col{border-left:0;border-top:1px solid var(--line)}.use-grid{grid-template-columns:1fr}.panel{padding:20px;overflow:auto}.data-table th{width:120px}.download{padding:76px 0}}

    /* White editorial theme */
    :root{--ink:#111827;--muted:#667085;--paper:#f6f7f9;--white:#fff;--navy:#f3f4f6;--blue:#2563eb;--cyan:#2563eb;--gold:#94a3b8;--line:#e5e7eb;--soft:#f1f5f9;--red:#475569;--shadow:0 18px 45px rgba(15,23,42,.08)}
    body{background:var(--paper);color:var(--ink)}strong{font-weight:780;color:#101828}
    .topbar{height:68px;background:rgba(255,255,255,.96);color:#111827;border-color:#e5e7eb;box-shadow:0 1px 10px rgba(15,23,42,.04)}
    .mark i{background:#93c5fd}.mark i:nth-child(5){background:#2563eb}.nav a{color:#475467}.nav a:hover,.nav a:focus-visible{color:#1d4ed8;background:#eff6ff}.menu-btn{color:#1d4ed8;border-color:#bfdbfe;background:#fff}
    .hero{min-height:520px;background:#fff;color:#111827;border-bottom:1px solid #e5e7eb}.hero:before{display:none}.hero-grid{min-height:520px;display:block}.hero-copy{padding:86px 0 64px;max-width:1160px}.eyebrow{padding:0;border:0;background:transparent;color:#2563eb;font-weight:800}.eyebrow:before{background:#2563eb;box-shadow:none}
    h1{font-size:clamp(1rem,4.2vw,3.3rem);line-height:1.12;color:#101828;white-space:nowrap;max-width:none;margin:20px 0}h1 span{color:#2563eb;margin-left:.35em}.lead{max-width:880px;color:#475467;font-size:1.08rem;line-height:1.9}.lead strong{color:#1d4ed8}.actions{margin-top:30px}.btn.primary{background:#2563eb;color:#fff;box-shadow:0 8px 18px rgba(37,99,235,.2)}.btn.primary:hover{background:#1d4ed8}.btn.ghost{border-color:#d0d5dd;color:#344054;background:#fff}.btn.ghost:hover{border-color:#98a2b3;background:#f8fafc}
    .quick-stats{position:static;width:100%;margin-top:52px;border-top:1px solid #e5e7eb;border-bottom:1px solid #e5e7eb}.quick-stats div{padding:18px 24px 18px 0}.quick-stats b{color:#101828;font-size:1.25rem}.quick-stats div:nth-child(2) b{color:#2563eb}.quick-stats small{color:#667085}
    .section{padding:94px 0}.section.white{background:#fff}.section.dark{background:#f3f5f8;color:#111827}.section-head{grid-template-columns:190px 1fr;gap:38px;margin-bottom:44px}.kicker,.dark .kicker{color:#2563eb;font-weight:850}.kicker:after{content:"";display:block;width:36px;height:3px;background:#2563eb;margin-top:12px;border-radius:99px}h2{font-size:clamp(1.15rem,2.55vw,2.75rem);max-width:none;white-space:nowrap;color:#101828}.intro,.dark .intro{color:#667085}.intro strong{color:#1d4ed8}
    .meta-grid{gap:14px}.meta-card{background:#fff;border-color:#e4e7ec;border-radius:18px;box-shadow:0 8px 26px rgba(15,23,42,.045)}.meta-card .icon{color:#2563eb}.meta-card:nth-child(3),.meta-card:nth-child(5){background:#eff6ff;border-color:#bfdbfe}.meta-card strong{color:#101828}.meta-card span{color:#667085}
    .method{grid-template-columns:1fr 42px 1fr 42px 1fr 42px 1fr}.step{display:flex;flex-direction:column;min-height:270px;border:1px solid #e4e7ec;border-top:4px solid #2563eb;background:#fff;box-shadow:0 10px 28px rgba(15,23,42,.05)}.step b{background:#eff6ff;color:#1d4ed8;margin-bottom:28px}.step h3{color:#101828;white-space:nowrap}.step p{color:#667085}.arrow{color:#60a5fa}.model-tags{margin-top:auto}.tag{border-color:#bfdbfe;color:#1d4ed8;background:#eff6ff}.score-main{background:#2563eb;color:#fff;box-shadow:0 12px 28px rgba(37,99,235,.18)}.score-main span,.score-main strong{color:#fff}.score-list div{border-color:#e4e7ec;background:#fff}.score-list b{color:#101828}.score-list span{color:#667085}
    .panel,.use-card,.fit-col,.cite-box,.research-note{background:#fff;border-color:#e4e7ec;box-shadow:0 8px 28px rgba(15,23,42,.045)}.data-table th{color:#1d4ed8}.checklist li:before{color:#2563eb}.use-card .num,.rule:before,.rule.danger:before{color:#2563eb}.use-card:nth-child(2),.use-card:nth-child(5){background:#eff6ff;border-color:#bfdbfe}.fit-col+.fit-col{background:#f8fafc}.rule{border-color:#e4e7ec}.rule.danger{border-color:#cbd5e1;background:#f8fafc}.callout,.callout.warn{background:#f8fafc;border-color:#2563eb;color:#475467}.limit{border-color:#d0d5dd;background:#fff}.limit b{color:#101828}.limit span{color:#667085}.cite-text{background:#f8fafc}.copy-btn{color:#1d4ed8}.copy-btn.done{color:#1d4ed8;border-color:#93c5fd;background:#eff6ff}
    .download{padding:72px 0;background:#f3f5f8;color:#111827}.download-simple{max-width:860px;margin:auto;background:#fff;border:1px solid #dbe3ef;border-radius:22px;box-shadow:0 16px 42px rgba(15,23,42,.07);overflow:hidden}.download-line{display:grid;grid-template-columns:150px 1fr auto;align-items:center;gap:18px;padding:24px 28px}.download-line+.download-line{border-top:1px solid #e5e7eb}.download-label{font-weight:800;color:#344054}.download-value{color:#1d4ed8;font-weight:700;text-decoration:none;overflow-wrap:anywhere}.download-value:hover{text-decoration:underline}.code-value{display:inline-block;color:#101828;font:800 1.15rem ui-monospace,SFMono-Regular,Consolas,monospace;letter-spacing:.12em}.download-line .copy-btn{margin:0}.footer{background:#fff;color:#667085;border-top:1px solid #e5e7eb}.footer a{color:#1d4ed8}.step h3,.panel h3,.use-card h3,.fit-col h3,.research-note h3,.cite-box h3{white-space:nowrap}
    @media(max-width:1050px){.hero-copy{padding:74px 0 58px}.quick-stats{margin-top:42px}.section-head{grid-template-columns:150px 1fr}.method{grid-template-columns:1fr 34px 1fr}.method .step:nth-of-type(n+3){margin-top:14px}}
    @media(max-width:700px){.hero,.hero-grid{min-height:auto}.hero-copy{padding:56px 0 46px}h1{font-size:clamp(1rem,4.3vw,1.25rem)}h2{font-size:clamp(1rem,4.6vw,1.3rem)}.lead{font-size:1rem}.quick-stats{grid-template-columns:1fr;margin-top:38px}.quick-stats div{padding:14px 0}.quick-stats div+div{border-top:1px solid #e5e7eb}.section{padding:70px 0}.section-head{grid-template-columns:1fr;gap:16px}.method{grid-template-columns:1fr}.step{min-height:0}.step h3,.panel h3,.use-card h3,.fit-col h3,.research-note h3,.cite-box h3{font-size:1rem}}

    /* Muted blue refinement */
    :root{--blue:#4f6f93;--cyan:#4f6f93}.mark i{background:#aabfd2}.mark i:nth-child(5){background:#4f6f93}.nav a:hover,.nav a:focus-visible{color:#3f5f80;background:#f1f4f7}.menu-btn{color:#3f5f80;border-color:#cbd8e5}.eyebrow,.kicker,.dark .kicker{color:#4f6f93}.eyebrow:before,.kicker:after{background:#4f6f93}h1 span,.lead strong,.intro strong{color:#3f5f80}.btn.primary{background:#4f6f93;box-shadow:0 8px 18px rgba(79,111,147,.18)}.btn.primary:hover{background:#3f5f80}.quick-stats div:nth-child(2) b{color:#4f6f93}.meta-card .icon,.data-table th,.checklist li:before,.use-card .num,.rule:before,.rule.danger:before{color:#4f6f93}.meta-card:nth-child(3),.meta-card:nth-child(5),.use-card:nth-child(2),.use-card:nth-child(5){background:#f1f4f7;border-color:#cbd8e5}.step{border-top-color:#4f6f93}.step b,.tag{background:#f1f4f7;color:#3f5f80;border-color:#cbd8e5}.arrow{color:#7b96af}.score-main{background:#4f6f93;box-shadow:0 12px 28px rgba(79,111,147,.16)}.callout,.callout.warn{border-color:#4f6f93}.copy-btn,.download-value,.footer a{color:#3f5f80}.copy-btn.done{color:#3f5f80;border-color:#aabfd2;background:#f1f4f7}
    .download-simple{max-width:1120px;display:grid;grid-template-columns:1fr 1fr;margin:auto;background:#fff;border:1px solid #dbe3ea;border-radius:22px;box-shadow:0 16px 42px rgba(15,23,42,.065);overflow:hidden}.download-block{padding:30px 32px}.download-block+.download-block{border-left:1px solid #e5e7eb}.download-label{display:block;margin-bottom:14px;color:#4f6f93;font-size:.78rem;font-weight:850;letter-spacing:.1em;text-transform:uppercase}.download-block h3{margin:0 0 10px;font-size:clamp(.85rem,1.5vw,1.18rem);color:#101828;white-space:nowrap}.download-block p{margin:0 0 16px;color:#667085}.download-value{display:block;font-weight:700;text-decoration:none;overflow-wrap:anywhere;line-height:1.55}.download-value:hover{text-decoration:underline}.download-field{display:grid;grid-template-columns:92px 1fr auto;align-items:center;gap:14px;padding:14px 0;border-top:1px solid #e5e7eb}.download-field:first-of-type{margin-top:20px}.download-field>span{color:#667085;font-weight:700}.download-field .copy-btn{margin:0}.code-value{color:#101828;font:800 1.1rem ui-monospace,SFMono-Regular,Consolas,monospace;letter-spacing:.12em}
    @media(max-width:760px){.download-simple{grid-template-columns:1fr;border-radius:16px}.download-block{padding:24px 20px}.download-block+.download-block{border-left:0;border-top:1px solid #e5e7eb}.download-field{grid-template-columns:1fr;gap:8px}.download-field .copy-btn{justify-self:start}}
  </style>
</head>
<body>
  <header class="topbar">
    <div class="wrap">
      <a class="brand" href="#top" aria-label="返回顶部"><span class="mark" aria-hidden="true"><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i></span><span>401 城市数据学社 · 数据说明</span></a>
      <nav class="nav" aria-label="页面目录"><a href="#overview">数据概览</a><a href="#method">生成方法</a><a href="#metadata">技术信息</a><a href="#usage">应用场景</a><a href="#notes">使用须知</a><a href="#citation">引用</a><a href="#download">下载</a></nav>
      <button class="menu-btn" type="button" onclick="document.getElementById('overview').scrollIntoView()">浏览正文 ↓</button>
    </div>
  </header>

  <main id="top">
    <section class="hero">
      <div class="wrap hero-grid">
        <div class="hero-copy">
          <div class="eyebrow">RESEARCH DATA BRIEF · 2020</div>
          <h1>中国第七次人口普查 <span>100米人口栅格</span></h1>
          <p class="lead">将<strong>县级与乡镇级人口普查统计量</strong>，通过集成学习和多源地理大数据下推到<strong>100米规则网格</strong>。这里不仅告诉你数据是什么，也说明它如何生成、能回答什么问题，以及使用时最容易踩的坑。</p>
          <div class="actions"><a class="btn primary" href="#download">前往数据下载 ↓</a><a class="btn ghost" href="#notes">先读使用须知</a></div>
          <div class="quick-stats"><div><b>2020</b><small>人口普查年份</small></div><div><b>100 × 100 m</b><small>名义空间分辨率</small></div><div><b>人 / 像元</b><small>栅格数值含义</small></div></div>
        </div>
      </div>
    </section>

    <section class="section white" id="overview">
      <div class="wrap">
        <div class="section-head"><div class="kicker">01 · Dataset overview</div><div><h2>先确认它是不是你需要的那类人口数据</h2><p class="intro">这是一个人口空间化产品，不是逐户或逐建筑调查结果。每个有效像元的数值表示约 100 m × 100 m 网格内<strong>模型估算的人口数量</strong>。</p></div></div>
        <div class="meta-grid">
          <div class="meta-card"><div class="icon">◫</div><strong>GeoTIFF</strong><span>标准地理栅格格式</span></div>
          <div class="meta-card"><div class="icon">⌖</div><strong>中国大陆</strong><span>全国及分省、分城市数据</span></div>
          <div class="meta-card"><div class="icon">▦</div><strong>100 m</strong><span>规则网格空间尺度</span></div>
          <div class="meta-card"><div class="icon">◎</div><strong>人口数</strong><span>单位：人 / 像元</span></div>
          <div class="meta-card"><div class="icon">◒</div><strong>2020 年</strong><span>第七次人口普查基准</span></div>
          <div class="meta-card"><div class="icon">⌁</div><strong>等积投影</strong><span>Albers Conic Equal Area</span></div>
        </div>
      </div>
    </section>

    <section class="section dark" id="method">
      <div class="wrap">
        <div class="section-head"><div class="kicker">02 · How it was made</div><div><h2>从人口普查统计量到 100 米规则网格</h2><p class="intro">作者使用<strong>PopSE 堆叠集成框架</strong>，融合人口普查与十项 100 米空间协变量，并以人类活动相关要素划定有人居住区域。</p></div></div>
        <div class="method">
          <article class="step"><b>01</b><h3>人口普查基准</h3><p>中国大陆 2,848 个县级单元，以及 1,135 个县内的 15,564 个乡镇人口统计。</p></article><div class="arrow">→</div>
          <article class="step"><b>02</b><h3>空间协变量</h3><p>腾讯用户密度、POI、道路、夜光、建筑高度、建成区比例、DEM、坡度、经纬度。</p></article><div class="arrow">→</div>
          <article class="step"><b>03</b><h3>PopSE 集成建模</h3><p>将三类基础模型预测结果进行堆叠融合，提高拟合表现与稳健性。</p><div class="model-tags"><span class="tag">Random Forest</span><span class="tag">XGBoost</span><span class="tag">LightGBM</span></div></article><div class="arrow">→</div>
          <article class="step"><b>04</b><h3>人口总量校准</h3><p>在有人居住区内分配人口，并依据普查单元总量调整，形成每像元人口数。</p></article>
        </div>
        <div class="score-row"><div class="score-main"><strong>0.8936</strong><span>乡镇级独立测试集 R²</span></div><div class="score-list"><div><b>22,798</b><span>RMSE · 人</span></div><div><b>10,173</b><span>MAE · 人</span></div><div><b>0.7427</b><span>WorldPop 对比 R²</span></div><div><b>0.7165</b><span>LandScan 对比 R²</span></div></div></div>
      </div>
    </section>

    <section class="section" id="metadata">
      <div class="wrap">
        <div class="section-head"><div class="kicker">03 · Technical metadata</div><div><h2>技术信息与下载前检查</h2><p class="intro">下表区分已由原 PDF 或论文明确说明的内容，以及必须在实际文件中再次核验的项目。</p></div></div>
        <div class="content-grid">
          <article class="panel"><h3>核心元数据</h3><table class="data-table"><tbody>
            <tr><th>数据名称</th><td>中国第七次人口普查 100 m 人口栅格数据</td></tr>
            <tr><th>时间属性</th><td>2020 年单期静态数据；不是年度序列或实时人口</td></tr>
            <tr><th>空间范围</th><td>中国大陆；论文说明未纳入香港、澳门和台湾</td></tr>
            <tr><th>空间分辨率</th><td>100 m；名义像元面积约 1 ha</td></tr>
            <tr><th>数据格式</th><td>GeoTIFF（.tif）</td></tr>
            <tr><th>数值含义</th><td>每个像元内估算人口数，单位为人 / 像元</td></tr>
            <tr><th>坐标参考</th><td>Albers Conic Equal Area。正式分析前应直接读取 GeoTIFF 内嵌 CRS，不建议仅凭名称手工指定参数</td></tr>
            <tr><th>空间层级</th><td>原 PDF 说明包含全国、分省与分城市文件；以实际下载目录为准</td></tr>
            <tr><th>NoData 与零值</th><td>原资料未给出固定 NoData 编码。零人口与缺失值必须依据栅格元数据和空间位置区分</td></tr>
            <tr><th>推荐软件</th><td>QGIS、ArcGIS Pro、GDAL、Python rasterio / rioxarray、R terra</td></tr>
          </tbody></table></article>
          <aside class="panel"><h3>拿到文件先做 7 项检查</h3><ul class="checklist"><li>查看 CRS、像元大小与范围</li><li>确认 NoData 值及掩膜</li><li>核对像元值的数据类型</li><li>随机检查负值、极端值和空洞</li><li>汇总全国及省市人口总量</li><li>确认文件命名与行政区版本</li><li>保存数据版本、DOI 与下载日期</li></ul><p class="mini-note">研究复现时，建议把 <b>原始数据—处理脚本—参数记录—输出结果</b> 分开存放，并生成校验值。</p></aside>
        </div>
      </div>
    </section>

    <section class="section white" id="usage">
      <div class="wrap">
        <div class="section-head"><div class="kicker">04 · Research applications</div><div><h2>它可以支持哪些科研问题</h2><p class="intro">优势在于能与同投影、同尺度的遥感和环境栅格直接叠加，但研究结论必须匹配其“模型估算 + 2020 年常住人口”的数据属性。</p></div></div>
        <div class="use-grid">
          <article class="use-card"><div class="num">APPLICATION 01</div><h3>灾害与污染暴露</h3><p>叠加洪涝、高温、空气污染、地质灾害等危险度栅格，估算暴露人口与空间热点。</p></article>
          <article class="use-card"><div class="num">APPLICATION 02</div><h3>公共服务可达性</h3><p>评估学校、医院、公园、避难场所等服务覆盖人口及空间公平性。</p></article>
          <article class="use-card"><div class="num">APPLICATION 03</div><h3>城市空间结构</h3><p>识别人居密度梯度、多中心结构、人口走廊和城市—乡村过渡区。</p></article>
          <article class="use-card"><div class="num">APPLICATION 04</div><h3>基础设施配置</h3><p>辅助公交站点、消防设施、社区服务设施和应急资源的需求测算与选址。</p></article>
          <article class="use-card"><div class="num">APPLICATION 05</div><h3>环境公平与健康</h3><p>结合绿地、遮阴、热环境、噪声等指标，研究不同人口承载区域的环境供需错配。</p></article>
          <article class="use-card"><div class="num">APPLICATION 06</div><h3>抽样与指标加权</h3><p>作为人口权重构建城市或区域综合指标，也可用于确定调查样区和空间抽样框。</p></article>
        </div>
        <div class="fit-table"><div class="fit-col"><h3>适合</h3><ul><li>2020 年横截面研究</li><li>区域、城市与街区级格局识别</li><li>栅格叠加、分区统计、人口加权</li><li>多城市统一尺度比较</li></ul></div><div class="fit-col"><h3>不宜直接用于</h3><ul><li>通勤时段、旅游旺季或实时人流</li><li>建筑、地块或住户级精确人口</li><li>个人轨迹与微观行为推断</li><li>仅凭单期数据解释人口变化趋势</li></ul></div></div>
      </div>
    </section>

    <section class="section" id="notes">
      <div class="wrap">
        <div class="section-head"><div class="kicker">05 · Usage notes</div><div><h2>科研使用时最重要的八条规则</h2><p class="intro">人口栅格看起来“精细”，但 100 米像元并不等同于 100 米精度的真实普查。它仍是由统计单元下推形成的模型结果。</p></div></div>
        <div class="rules">
          <article class="rule"><div><h3>人口数应使用求和聚合</h3><p>统计行政区、缓冲区或研究网格人口时，对有效像元求和，而不是取均值。</p></div></article>
          <article class="rule danger"><div><h3>避免双线性与三次卷积</h3><p>人口数属于计数型数据，普通平滑重采样会改变总量。优先采用面积权重或守恒式聚合。</p></div></article>
          <article class="rule"><div><h3>不要混淆零值与 NoData</h3><p>零值可能表示模型判断无人居住；NoData 则可能代表范围外或缺失，两者含义不同。</p></div></article>
          <article class="rule"><div><h3>裁剪后核对边界像元</h3><p>行政边界穿过像元时，直接按中心点选取与按面积加权会产生不同结果，应记录规则。</p></div></article>
          <article class="rule"><div><h3>投影转换要检查总量</h3><p>重投影前后分别汇总人口；若总量明显变化，说明重采样方式或 NoData 处理存在问题。</p></div></article>
          <article class="rule"><div><h3>与年份一致的数据叠加</h3><p>尽量匹配 2020 年或相近年份的土地利用、环境和设施数据，避免把时间差异误判为空间关系。</p></div></article>
          <article class="rule danger"><div><h3>避免生态谬误</h3><p>网格层面的相关关系不能直接解释个体行为、收入、健康或社会属性。</p></div></article>
          <article class="rule"><div><h3>保留来源与处理记录</h3><p>论文中同时引用数据集 DOI 和方法论文，附下载日期、版本、裁剪范围与处理参数。</p></div></article>
        </div>
        <div class="callout warn"><b>密度换算提醒：</b>若需要“人 / km²”，不要简单把像元值乘以 100。应先确认投影、实际像元面积和边界处理，再用人口数 ÷ 有效面积计算。</div>
      </div>
    </section>

    <section class="section dark" id="uncertainty">
      <div class="wrap">
        <div class="section-head"><div class="kicker">06 · Quality & limitations</div><div><h2>精度不错，不等于每个像元都是真值</h2><p class="intro">论文的精度指标是在乡镇统计尺度对网格结果进行聚合后验证得到，不能直接解释为单个 100 米像元的准确率。</p></div></div>
        <div class="uncertainty"><div class="limit-list"><div class="limit"><b>尺度不变性假设</b><span>模型在县/乡镇尺度学习到的关系被应用于 100 米网格，跨尺度推断会引入不确定性。</span></div><div class="limit"><b>协变量时相差异</b><span>部分辅助数据并非严格采集于普查时点，快速变化地区可能存在时间错配。</span></div><div class="limit"><b>有人居住区识别</b><span>活动数据、建筑与夜光共同决定人口是否被分配；边缘居住地可能被漏判或弱化。</span></div><div class="limit"><b>模型结构有限</b><span>PopSE 融合三类常用算法，但并不穷尽所有可能模型，结果仍依赖训练样本和参数。</span></div></div>
          <article class="research-note"><h3>建议在论文中这样报告不确定性</h3><p>不要只写“分辨率为 100 m”。更完整的表述应同时说明来源、建模属性、验证尺度与处理方法。</p><ol><li>数据为基于第七次人口普查统计量和多源空间协变量生成的模型估算产品。</li><li>引用乡镇级独立测试集指标，但明确其不是像元级误差。</li><li>报告研究区内人口汇总值与对应普查统计量的差异。</li><li>对阈值、重采样、边界像元和空间尺度开展敏感性分析。</li><li>避免对单个像元或局部极端值作过度解释。</li></ol></article>
        </div>
      </div>
    </section>

    <section class="section white" id="citation">
      <div class="wrap">
        <div class="section-head"><div class="kicker">07 · Citation</div><div><h2>请同时引用方法论文与数据集</h2><p class="intro">方法论文用于说明数据如何生成，Figshare DOI 用于标识你实际使用的数据版本。</p></div></div>
        <div class="citation">
          <div class="cite-box"><h3>推荐参考文献格式</h3><div class="cite-text" id="citationText">Chen, Y., Xu, C., Ge, Y., Zhang, X., and Zhou, Y.: A 100 m gridded population dataset of China's seventh census using ensemble learning and big geospatial data, Earth System Science Data, 16, 3705–3718, 2024. https://doi.org/10.5194/essd-16-3705-2024

Dataset: https://doi.org/10.6084/m9.figshare.24916140.v1</div><button class="copy-btn" type="button" data-copy="citationText">复制引用</button></div>
          <div class="cite-box"><h3>BibTeX</h3><div class="cite-text" id="bibText">@article{chen2024population,
  title={A 100 m gridded population dataset of China's seventh census using ensemble learning and big geospatial data},
  author={Chen, Yuehong and Xu, Congcong and Ge, Yong and Zhang, Xiaoxiang and Zhou, Ya'nan},
  journal={Earth System Science Data},
  volume={16}, pages={3705--3718}, year={2024},
  doi={10.5194/essd-16-3705-2024}
}</div><button class="copy-btn" type="button" data-copy="bibText">复制 BibTeX</button></div>
        </div>
      </div>
    </section>

    <section class="download" id="download">
      <div class="wrap">
        <div class="download-simple">
          <section class="download-block">
            <span class="download-label">Data source · 数据来源</span>
            <h3>陈跃红教授团队</h3>
            <p>数据来源于陈跃红教授团队在 Figshare 平台公开分享的数据。</p>
            <a class="download-value" href="https://figshare.com/s/d9dd5f9bb1a7f4fd3734" target="_blank" rel="noopener">https://figshare.com/s/d9dd5f9bb1a7f4fd3734 ↗</a>
          </section>
          <section class="download-block">
            <span class="download-label">Baidu Netdisk · 网盘下载</span>
            <h3>我国第七次人口普查的100m分辨率人口栅格数据</h3>
            <p>免费获取 · TIF 格式 · 2020 年</p>
            <div class="download-field"><span>🔗 网盘链接</span><a class="download-value" href="https://pan.baidu.com/s/1B2dExAaU7HgCnRg80JkdQA?pwd=inba" target="_blank" rel="noopener">https://pan.baidu.com/s/1B2dExAaU7HgCnRg80JkdQA?pwd=inba</a><a class="btn primary" href="https://pan.baidu.com/s/1B2dExAaU7HgCnRg80JkdQA?pwd=inba" target="_blank" rel="noopener">打开</a></div>
            <div class="download-field"><span>🔑 提取码</span><strong class="code-value" id="panCode">inba</strong><button class="copy-btn" type="button" data-copy="panCode">复制</button></div>
          </section>
        </div>
      </div>
    </section>
  </main>

  <footer class="footer"><div class="wrap"><div class="source-note">内容依据：用户提供的数据分享 PDF；陈跃红等公开数据集与 2024 年 ESSD 论文。页面中的适用性判断与处理建议属于科研使用说明，不替代原作者元数据。</div><div><a href="#top">返回顶部 ↑</a></div></div></footer>
  <script>
    document.querySelectorAll('[data-copy]').forEach(function(btn){btn.addEventListener('click',async function(){var text=document.getElementById(btn.dataset.copy).innerText;try{await navigator.clipboard.writeText(text);var old=btn.textContent;btn.textContent='已复制 ✓';btn.classList.add('done');setTimeout(function(){btn.textContent=old;btn.classList.remove('done')},1800)}catch(e){window.getSelection().selectAllChildren(document.getElementById(btn.dataset.copy));btn.textContent='已选中，请手动复制'}})});
  </script>
</body>
</html>
