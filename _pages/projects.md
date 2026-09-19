---
layout: page
title: 数据资源
permalink: /states/
nav: true
nav_order: 2
dataset_categories:
  - 人口相关数据
  - 交通相关数据
  - 行政区划数据
  - 地形相关数据
  - 用地数据/土地覆盖数据
  - 河流水系相关数据
  - 建筑体块及建筑高度数据
  - 城市建成区及不透水面数据
  - 社会经济相关数据
  - 气象相关数据
  - 环境污染及环境治理数据
  - NDVI/EVI/FVC/NPP/GPP相关数据
  - 夜间灯光数据
  - 土壤相关数据
  - 旅游相关数据
  - 生态相关数据
  - 不同设施的点位数据
  - POI设施的数量数据
---

<style>
  html,
  body {
    overflow-x: hidden;
  }

  .post-header { display: none; }
  .dataset-page {
    --dataset-blue: #557cf2;
    --dataset-blue-dark: #315ad8;
    --dataset-ink: #1c2940;
    --dataset-muted: #788397;
    --dataset-line: #e8ebf2;
    width: 100vw;
    margin-left: calc(50% - 50vw);
    margin-top: -2rem;
    background: #fff;
    color: var(--dataset-ink);
  }
  .dataset-hero {
    position: relative;
    min-height: 300px;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 54px 24px 62px;
    background: radial-gradient(circle at 83% 44%, rgba(25, 120, 255, 0.32), transparent 16%), radial-gradient(circle at 72% 20%, rgba(29, 92, 190, 0.18), transparent 22%), linear-gradient(110deg, #020b1a 0%, #07162b 52%, #061c3c 100%);
  }
  .dataset-hero::before, .dataset-hero::after { position: absolute; content: ""; pointer-events: none; }
  .dataset-hero::before {
    inset: -35% -10% -45% 48%;
    opacity: 0.2;
    transform: perspective(600px) rotateX(60deg) rotateZ(-13deg);
    background-image: linear-gradient(rgba(70, 153, 255, 0.42) 1px, transparent 1px), linear-gradient(90deg, rgba(70, 153, 255, 0.42) 1px, transparent 1px);
    background-size: 44px 44px;
  }
  .dataset-hero::after {
    width: 118px;
    height: 118px;
    right: 10%;
    top: 60px;
    border: 2px solid rgba(77, 166, 255, 0.6);
    box-shadow: 0 0 24px rgba(45, 144, 255, 0.55), inset 0 0 30px rgba(39, 135, 255, 0.24);
    transform: rotate(28deg);
  }
  .dataset-hero__inner { position: relative; z-index: 1; width: min(720px, 100%); text-align: center; }
  .dataset-hero h1 { margin: 0; color: #fff; font-size: clamp(30px, 4vw, 44px); font-weight: 800; letter-spacing: 0.08em; }
  .dataset-hero p { margin: 12px 0 28px; color: #aebbd0; font-size: 16px; }
  .dataset-search { display: flex; width: 100%; padding: 5px; border-radius: 6px; background: #fff; box-shadow: 0 12px 32px rgba(0, 7, 20, 0.28); }
  .dataset-search input { min-width: 0; flex: 1; padding: 15px 18px; border: 0; outline: 0; color: var(--dataset-ink); font-size: 15px; background: transparent; }
  .dataset-search button { min-width: 112px; padding: 0 22px; border: 0; border-radius: 6px; background: var(--dataset-blue); color: #fff; font-weight: 700; cursor: pointer; transition: background 0.2s ease, transform 0.2s ease; }
  .dataset-search button:hover { background: var(--dataset-blue-dark); transform: translateY(-1px); }
  .dataset-shell { display: grid; grid-template-columns: 270px minmax(0, 1fr); gap: 30px; width: min(1480px, calc(100% - 48px)); margin: 0 auto; padding: 34px 0 72px; }
  .dataset-sidebar { align-self: start; overflow: hidden; border: 1px solid #e3e9fa; border-radius: 12px; background: #f7f9ff; box-shadow: 0 10px 25px rgba(70, 97, 155, 0.08); }
  .dataset-sidebar__title { display: flex; align-items: center; gap: 9px; padding: 20px 18px 15px; color: #3c4659; font-size: 18px; font-weight: 800; }
  .dataset-sidebar__title span { color: var(--dataset-blue); }
  .dataset-category { display: flex; width: calc(100% - 16px); align-items: center; gap: 8px; margin: 3px 8px; padding: 12px 13px; border: 0; border-radius: 8px; color: #525b6c; background: transparent; font-size: 14px; font-weight: 600; text-align: left; cursor: pointer; transition: color 0.2s ease, background 0.2s ease; }
  .dataset-category::before { content: "›"; color: #8a94a6; font-size: 20px; line-height: 1; }
  .dataset-category:hover, .dataset-category.is-active { color: var(--dataset-blue); background: #e2e8ff; }
  .dataset-category.is-active::before { color: var(--dataset-blue); }
  .dataset-main { min-width: 0; }
  .dataset-toolbar__top { display: flex; align-items: baseline; justify-content: space-between; gap: 16px; margin: 2px 0 16px; }
  .dataset-toolbar__top h2 { margin: 0; font-size: 20px; font-weight: 800; }
  .dataset-result-count { margin-left: 8px; color: var(--dataset-muted); font-size: 14px; font-weight: 400; }
  .dataset-result-count strong { color: var(--dataset-blue); }
  .dataset-reset { border: 0; color: var(--dataset-blue); background: transparent; cursor: pointer; }
  .dataset-filters { display: flex; flex-wrap: wrap; gap: 18px; padding-bottom: 20px; border-bottom: 1px solid var(--dataset-line); color: #596376; font-size: 14px; }
  .dataset-filters label { display: flex; align-items: center; gap: 7px; }
  .dataset-filters select { border: 0; outline: 0; color: var(--dataset-blue); background: transparent; cursor: pointer; }
  .dataset-group { margin-top: 28px; }
  .dataset-group__heading { display: flex; align-items: center; gap: 8px; margin: 0 0 12px; padding-left: 10px; border-left: 2px solid var(--dataset-blue); font-size: 16px; font-weight: 800; }
  .dataset-group__heading span { color: #929bad; font-size: 13px; font-weight: 400; }
  .dataset-card { display: grid; grid-template-columns: minmax(0, 1fr) auto; gap: 18px; align-items: center; min-height: 82px; margin-bottom: 12px; padding: 15px 18px; border: 1px solid transparent; border-radius: 9px; background: #f6f7f9; transition: border-color 0.2s ease, box-shadow 0.2s ease, transform 0.2s ease; }
  .dataset-card:hover { border-color: #dbe3fb; box-shadow: 0 8px 22px rgba(66, 93, 151, 0.1); transform: translateY(-1px); }
  .dataset-card__title { display: inline-block; margin-bottom: 9px; color: #27364c; font-size: 16px; font-weight: 700; text-decoration: none; }
  .dataset-card__title:hover { color: var(--dataset-blue); }
  .dataset-badges { display: flex; flex-wrap: wrap; gap: 7px; }
  .dataset-badge { padding: 3px 8px; border-radius: 3px; color: #667084; background: #e9ebef; font-size: 12px; }
  .dataset-card__more { display: flex; align-items: center; gap: 25px; color: #7d8798; font-size: 12px; white-space: nowrap; }
  .dataset-card__arrow { color: #8791a3; font-size: 30px; font-weight: 300; line-height: 1; }
  .dataset-empty { display: none; margin-top: 28px; padding: 46px 20px; border: 1px dashed #d6ddeb; border-radius: 10px; color: var(--dataset-muted); text-align: center; }
  @media (max-width: 920px) {
    .dataset-shell { grid-template-columns: 1fr; }
    .dataset-sidebar { position: static; }
    .dataset-category-list { display: flex; overflow-x: auto; padding: 0 8px 10px; }
    .dataset-category { flex: 0 0 auto; width: auto; white-space: nowrap; }
  }
  @media (max-width: 600px) {
    .dataset-page { margin-top: -1rem; }
    .dataset-hero { min-height: 260px; padding: 42px 18px; }
    .dataset-hero::after { right: -45px; }
    .dataset-hero p { font-size: 14px; }
    .dataset-search input { padding: 12px 10px; font-size: 14px; }
    .dataset-search button { min-width: 78px; padding: 0 12px; }
    .dataset-shell { width: min(100% - 28px, 1480px); padding-top: 22px; }
    .dataset-toolbar__top { align-items: flex-start; }
    .dataset-card { grid-template-columns: 1fr; }
    .dataset-card__more { justify-content: space-between; }
  }

  /* 独立的全宽莫兰迪数据工作台 */
  .dataset-page {
    --dataset-blue: #708998;
    --dataset-blue-dark: #526c7a;
    --dataset-ink: #39454b;
    --dataset-muted: #7a8588;
    --dataset-line: #dddcd6;
    background: #f5f3ee;
  }

  .dataset-hero {
    min-height: 224px;
    justify-content: flex-start;
    padding: 42px 28px 46px;
    background:
      radial-gradient(circle at 88% 18%, rgba(169, 153, 139, 0.28) 0 90px, transparent 92px),
      radial-gradient(circle at 79% 78%, rgba(126, 151, 145, 0.22) 0 150px, transparent 152px),
      linear-gradient(110deg, #ded8ce 0%, #ece8df 58%, #d7dfda 100%);
  }

  .dataset-hero::before {
    inset: 0 0 0 55%;
    opacity: 0.34;
    transform: none;
    background-image:
      linear-gradient(rgba(95, 111, 114, 0.13) 1px, transparent 1px),
      linear-gradient(90deg, rgba(95, 111, 114, 0.13) 1px, transparent 1px);
    background-size: 34px 34px;
    mask-image: linear-gradient(90deg, transparent, #000);
  }

  .dataset-hero::after {
    width: 112px;
    height: 112px;
    right: 8%;
    top: 52px;
    border: 1px solid rgba(84, 105, 109, 0.28);
    border-radius: 50%;
    box-shadow: 54px 30px 0 -25px rgba(174, 139, 120, 0.24), -52px 55px 0 -36px rgba(112, 137, 152, 0.28);
    transform: none;
  }

  .dataset-hero__inner {
    width: min(700px, 100%);
    text-align: left;
  }

  .dataset-hero h1 {
    color: #344147;
    font-size: clamp(32px, 4vw, 46px);
    letter-spacing: 0.04em;
  }

  .dataset-hero p {
    margin: 9px 0 24px;
    color: #6f7b7e;
  }

  .dataset-search {
    border: 1px solid rgba(83, 103, 109, 0.15);
    box-shadow: 0 12px 28px rgba(69, 79, 78, 0.1);
  }

  .dataset-search button {
    background: #708998;
  }

  .dataset-shell {
    grid-template-columns: 248px minmax(390px, 1fr) minmax(360px, 32vw);
    gap: 18px;
    width: 100%;
    margin: 0;
    padding: 24px 18px 72px;
  }

  .dataset-sidebar,
  .city-panel {
    border-color: #deddd7;
    background: #eeece6;
    box-shadow: none;
  }

  .dataset-category:hover,
  .dataset-category.is-active {
    color: #526c72;
    background: #d9dfda;
  }

  .dataset-card {
    background: #ebeae5;
  }

  .dataset-card:hover {
    border-color: #cdd4d0;
    box-shadow: 0 8px 22px rgba(75, 88, 84, 0.08);
  }

  .city-panel {
    position: sticky;
    top: 82px;
    align-self: start;
    overflow: hidden;
    min-height: 610px;
    border: 1px solid #deddd7;
    border-radius: 12px;
  }

  .city-panel__header {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    gap: 14px;
    padding: 18px 18px 12px;
  }

  .city-panel__header h3 {
    margin: 0 0 5px;
    color: #3d494c;
    font-size: 17px;
    font-weight: 800;
  }

  .city-panel__header p {
    margin: 0;
    color: #7d8787;
    font-size: 12px;
  }

  .weather-button {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    flex: 0 0 auto;
    padding: 7px 10px;
    border: 1px solid #d4d3cd;
    border-radius: 999px;
    color: #5f6e70;
    background: rgba(255, 255, 255, 0.56);
    font-size: 12px;
    cursor: pointer;
  }

  .weather-button:hover {
    background: #fff;
  }

  .city-model {
    display: block;
    width: 100%;
    height: auto;
    min-height: 470px;
    background: #dfe5e1;
  }

  .city-layer {
    opacity: 0.76;
    transition: opacity 0.35s ease, filter 0.35s ease, transform 0.35s ease;
    transform-origin: center;
  }

  .city-model.is-focused .city-layer {
    opacity: 0.13;
  }

  .city-model.is-focused .city-layer.is-highlighted {
    opacity: 1;
    filter: saturate(1.12) drop-shadow(0 3px 4px rgba(57, 68, 67, 0.15));
  }

  .city-model .city-sky,
  .city-model .city-ground,
  .city-model .city-building,
  .city-model .city-window {
    transition: fill 0.8s ease, opacity 0.8s ease;
  }

  .city-model .city-moon,
  .city-model .city-stars {
    opacity: 0;
    transition: opacity 0.8s ease;
  }

  .city-model.is-night .city-sky { fill: #59656b; }
  .city-model.is-night .city-ground { fill: #747d78; }
  .city-model.is-night .city-building { fill: #687176; }
  .city-model.is-night .city-window { fill: #d8b77b; opacity: 0.95; }
  .city-model.is-night .city-sun { opacity: 0; }
  .city-model.is-night .city-moon,
  .city-model.is-night .city-stars { opacity: 1; }

  .weather-cloud,
  .weather-rain,
  .weather-fog {
    opacity: 0;
    transition: opacity 0.45s ease;
  }

  .city-model[data-weather="cloudy"] .weather-cloud,
  .city-model[data-weather="rainy"] .weather-cloud,
  .city-model[data-weather="rainy"] .weather-rain,
  .city-model[data-weather="foggy"] .weather-fog {
    opacity: 1;
  }

  .city-model[data-weather="rainy"] .weather-rain {
    animation: city-rain 0.9s linear infinite;
  }

  @keyframes city-rain {
    from { transform: translateY(-3px); }
    to { transform: translateY(8px); }
  }

  .city-panel__footer {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    padding: 13px 16px 15px;
    border-top: 1px solid #d8d8d2;
    color: #737e7f;
    font-size: 12px;
  }

  .city-layer-label {
    color: #526c72;
    font-weight: 700;
  }

  @media (max-width: 1180px) {
    .dataset-shell {
      grid-template-columns: 230px minmax(0, 1fr);
    }

    .city-panel {
      position: static;
      grid-column: 1 / -1;
      min-height: auto;
    }

    .city-model {
      min-height: 0;
      max-height: 520px;
    }
  }

  @media (max-width: 920px) {
    .dataset-shell {
      grid-template-columns: 1fr;
      padding-inline: 12px;
    }

    .city-panel {
      grid-column: auto;
    }
  }

  @media (max-width: 600px) {
    .dataset-hero {
      padding-inline: 18px;
    }

    .dataset-hero::before,
    .dataset-hero::after {
      display: none;
    }

    .city-panel__header {
      flex-direction: column;
    }

    .city-panel__footer {
      align-items: flex-start;
      flex-direction: column;
    }
  }
</style>

<div class="dataset-page" id="datasetPage">
  <section class="dataset-hero" aria-labelledby="datasetTitle">
    <div class="dataset-hero__inner">
      <h1 id="datasetTitle">401 数据学社</h1>
      <p>几千种城市数据等你来获取！</p>
      <form class="dataset-search" id="datasetSearchForm" role="search">
        <input id="datasetSearchInput" type="search" placeholder="⌕  搜索数据名称" aria-label="搜索数据名称">
        <button type="submit">⌕&nbsp; 搜索</button>
      </form>
    </div>
  </section>

  <div class="dataset-shell">
    <aside class="dataset-sidebar" aria-label="数据分类">
      <div class="dataset-sidebar__title"><span>▥</span> 数据分类</div>
      <div class="dataset-category-list">
        <button class="dataset-category is-active" type="button" data-category="all">全部数据</button>
        {% for category in page.dataset_categories %}
          <button class="dataset-category" type="button" data-category="{{ category | escape }}">{{ category }}</button>
        {% endfor %}
      </div>
    </aside>

    <main class="dataset-main">
      <div class="dataset-toolbar">
        <div class="dataset-toolbar__top">
          <h2><span id="activeCategoryTitle">全部数据</span><span class="dataset-result-count">共找到 <strong id="datasetCount">{{ site.projects | size }}</strong> 条数据</span></h2>
          <button class="dataset-reset" id="datasetReset" type="button">↻&nbsp; 重置筛选</button>
        </div>
        <div class="dataset-filters">
          <label>数据格式：
            <select id="formatFilter" aria-label="按数据格式筛选">
              <option value="all">全部</option><option value="tif栅格数据">tif栅格数据</option><option value="shp矢量数据">shp矢量数据</option><option value="表格数据">表格数据</option><option value="其他格式">其他格式</option>
            </select>
          </label>
          <label>数据获取方式：
            <select id="accessFilter" aria-label="按获取方式筛选">
              <option value="all">全部</option><option value="免费获取">免费获取</option><option value="转发集赞获取">转发集赞获取</option><option value="办理会员获取">办理会员获取</option><option value="联系获取">联系获取</option>
            </select>
          </label>
        </div>
      </div>

      <section class="dataset-group" aria-label="数据列表">
        <h3 class="dataset-group__heading">数据资源 <span id="groupCount">{{ site.projects | size }} 条</span></h3>
        <div id="datasetList">
          {% assign sorted_projects = site.projects | sort: "importance" %}
          {% for project in sorted_projects %}
            {% assign project_format = project.data_format | default: "其他格式" %}
            {% assign project_access = project.access | default: "联系获取" %}
            {% assign project_category = project.category | default: "其他数据" %}
            <article class="dataset-card" data-category="{{ project_category | escape }}" data-format="{{ project_format | escape }}" data-access="{{ project_access | escape }}" data-search="{{ project.title | append: ' ' | append: project.description | downcase | escape }}">
              <div>
                <a class="dataset-card__title" href="{{ project.url | relative_url }}">{{ project.title }}</a>
                <div class="dataset-badges"><span class="dataset-badge">{{ project_format }}</span><span class="dataset-badge">{{ project_access }}</span></div>
              </div>
              <div class="dataset-card__more"><span>{{ project.series | default: "查看数据详情" }}</span><span class="dataset-card__arrow" aria-hidden="true">›</span></div>
            </article>
          {% endfor %}
        </div>
        <div class="dataset-empty" id="datasetEmpty">暂未找到符合条件的数据，请调整关键词或筛选条件。</div>
      </section>
    </main>

    <aside class="city-panel" aria-labelledby="cityModelTitle">
      <div class="city-panel__header">
        <div>
          <h3 id="cityModelTitle">城市要素模型</h3>
          <p>选择左侧分类，模型同步显示对应空间要素</p>
        </div>
        <button class="weather-button" id="weatherButton" type="button" title="天气彩蛋：点击切换天气">
          <span id="weatherIcon" aria-hidden="true">☀</span>
          <span id="weatherLabel">晴朗</span>
        </button>
      </div>

      <svg class="city-model" id="cityModel" viewBox="0 0 620 520" role="img" aria-labelledby="citySvgTitle citySvgDesc" data-weather="sunny">
        <title id="citySvgTitle">可交互的城市空间要素模型</title>
        <desc id="citySvgDesc">模型包含建筑、交通、水系、绿地、人口、设施等图层，并根据本地时间切换昼夜。</desc>
        <defs>
          <linearGradient id="citySkyGradient" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0" stop-color="#d8e0dc" />
            <stop offset="1" stop-color="#edf0ea" />
          </linearGradient>
          <linearGradient id="riverGradient" x1="0" y1="0" x2="1" y2="1">
            <stop offset="0" stop-color="#8fa8ad" />
            <stop offset="1" stop-color="#718f98" />
          </linearGradient>
          <pattern id="imperviousPattern" width="16" height="16" patternUnits="userSpaceOnUse">
            <path d="M0 16L16 0M-4 4L4-4M12 20L20 12" stroke="#a9a49b" stroke-width="2" opacity="0.38" />
          </pattern>
          <filter id="softGlow" x="-50%" y="-50%" width="200%" height="200%">
            <feGaussianBlur stdDeviation="4" result="blur" />
            <feMerge><feMergeNode in="blur" /><feMergeNode in="SourceGraphic" /></feMerge>
          </filter>
        </defs>

        <rect class="city-sky" width="620" height="520" fill="url(#citySkyGradient)" />
        <circle class="city-sun" cx="525" cy="74" r="31" fill="#cdbb8f" opacity="0.8" />
        <g class="city-moon"><circle cx="526" cy="72" r="24" fill="#e1d5b5" /><circle cx="536" cy="63" r="23" fill="#59656b" /></g>
        <g class="city-stars" fill="#ddd2b7">
          <circle cx="455" cy="50" r="2" /><circle cx="485" cy="105" r="1.8" /><circle cx="564" cy="126" r="2" /><circle cx="590" cy="54" r="1.5" /><circle cx="410" cy="88" r="1.4" />
        </g>

        <g class="weather-cloud" fill="#aeb8b7">
          <ellipse cx="102" cy="73" rx="43" ry="18" /><circle cx="78" cy="65" r="20" /><circle cx="111" cy="57" r="26" /><circle cx="139" cy="70" r="18" />
        </g>
        <g class="weather-rain" stroke="#78929a" stroke-width="3" stroke-linecap="round">
          <path d="M74 92l-9 17M99 94l-9 17M126 93l-9 17M149 91l-9 17" />
        </g>
        <g class="weather-fog" stroke="#a6aeaa" stroke-width="8" stroke-linecap="round" opacity="0.75">
          <path d="M38 83h135M22 106h112M64 129h130" />
        </g>

        <g class="city-layer" data-category-layer="人口相关数据">
          <g fill="#aa7f75" opacity="0.85">
            <circle cx="145" cy="252" r="5" /><circle cx="169" cy="239" r="4" /><circle cx="197" cy="266" r="5" /><circle cx="348" cy="224" r="5" /><circle cx="376" cy="246" r="4" /><circle cx="437" cy="208" r="5" /><circle cx="474" cy="237" r="4" />
          </g>
        </g>

        <g class="city-layer" data-category-layer="行政区划数据" fill="none" stroke="#927f91" stroke-width="2.5" stroke-dasharray="8 7" opacity="0.75">
          <path d="M36 286L185 192L315 244L463 168L585 246L546 416L386 478L226 438L64 394Z" />
          <path d="M185 192L226 438M315 244L386 478M463 168L546 416" />
        </g>

        <g class="city-layer" data-category-layer="地形相关数据" fill="none" stroke="#9a9a83" stroke-width="2" opacity="0.5">
          <path d="M18 214C88 169 147 177 212 201S342 234 416 193s134-48 191-19" />
          <path d="M5 238C73 195 145 199 205 222s141 45 218 4 130-51 192-31" />
          <path d="M18 262C89 226 147 224 206 245s137 44 214 9 130-42 188-22" />
        </g>

        <path class="city-ground" d="M25 286L293 132L600 302L330 494Z" fill="#aab3a9" />

        <g class="city-layer" data-category-layer="用地数据/土地覆盖数据|土壤相关数据">
          <path d="M70 290L183 225L251 264L139 329Z" fill="#c0aa8f" />
          <path d="M377 222L477 166L544 202L443 260Z" fill="#a9b8a3" />
          <path d="M397 371L506 310L563 344L454 406Z" fill="#b89d8f" />
        </g>

        <g class="city-layer" data-category-layer="城市建成区及不透水面数据">
          <path d="M169 338L317 253L479 343L332 430Z" fill="url(#imperviousPattern)" stroke="#99958d" stroke-width="2" />
        </g>

        <g class="city-layer" data-category-layer="河流水系相关数据">
          <path d="M27 355C112 323 151 350 222 371S351 407 419 378s108-33 173-4L571 423c-61-30-104-25-165 4s-130 3-199-20-109-38-165-7Z" fill="url(#riverGradient)" opacity="0.95" />
          <path d="M36 374C110 346 158 373 224 393S347 423 414 397s109-32 166-7" fill="none" stroke="#c8d6d4" stroke-width="3" opacity="0.65" />
        </g>

        <g class="city-layer" data-category-layer="生态相关数据|NDVI/EVI/FVC/NPP/GPP相关数据">
          <path d="M77 294L181 235L244 270L140 331Z" fill="#7f9a87" />
          <g fill="#647f6c" stroke="#e0e4da" stroke-width="2">
            <circle cx="116" cy="279" r="13" /><circle cx="144" cy="270" r="11" /><circle cx="168" cy="284" r="14" /><circle cx="126" cy="306" r="10" /><circle cx="194" cy="265" r="9" />
          </g>
          <g stroke="#5f7365" stroke-width="3"><path d="M116 290v17M144 280v18M168 295v17M126 315v13M194 274v14" /></g>
        </g>

        <g class="city-layer" data-category-layer="交通相关数据" fill="none" stroke-linecap="round">
          <path d="M69 335L303 199L553 337" stroke="#e6dfd2" stroke-width="22" />
          <path d="M69 335L303 199L553 337" stroke="#877f78" stroke-width="2.5" stroke-dasharray="12 10" />
          <path d="M160 424L367 305L517 388" stroke="#e6dfd2" stroke-width="15" />
          <path d="M160 424L367 305L517 388" stroke="#8d8780" stroke-width="2" stroke-dasharray="10 9" />
          <path d="M119 348C230 310 336 291 487 300" stroke="#9b7f79" stroke-width="5" />
          <g fill="#9b7f79" stroke="#f0ece3" stroke-width="3">
            <circle cx="183" cy="328" r="8" /><circle cx="302" cy="302" r="8" /><circle cx="424" cy="297" r="8" />
          </g>
        </g>

        <g class="city-layer" data-category-layer="建筑体块及建筑高度数据">
          <g class="city-building" fill="#859395" stroke="#edf0ea" stroke-width="2">
            <path d="M235 215l40-23 38 21-40 24z" /><path d="M235 215v80l38 22v-80z" fill="#718487" /><path d="M273 237l40-24v80l-40 24z" fill="#647a7e" />
            <path d="M342 205l50-29 42 23-51 30z" /><path d="M342 205v121l41 24V229z" fill="#718487" /><path d="M383 229l51-30v121l-51 30z" fill="#65787c" />
            <path d="M449 262l40-23 35 20-40 23z" /><path d="M449 262v73l35 20v-73z" fill="#718487" /><path d="M484 282l40-23v73l-40 23z" fill="#647a7e" />
            <path d="M203 337l37-21 33 18-37 22z" /><path d="M203 337v54l33 19v-54z" fill="#718487" /><path d="M236 356l37-22v54l-37 22z" fill="#647a7e" />
          </g>
          <g class="city-window" fill="#b8c0b9" opacity="0.5">
            <path d="M249 235l8 5v12l-8-5zM263 244l7 4v12l-7-4zM287 241l9-5v12l-9 5zM296 258l8-5v12l-8 5z" />
            <path d="M355 230l9 5v14l-9-5zM371 240l8 4v14l-8-4zM398 231l10-6v14l-10 6zM413 222l9-5v14l-9 5zM398 255l10-6v14l-10 6zM413 246l9-5v14l-9 5z" />
            <path d="M462 283l8 5v12l-8-5zM476 291l7 4v12l-7-4zM495 286l9-5v12l-9 5z" />
          </g>
        </g>

        <g class="city-layer" data-category-layer="社会经济相关数据|POI设施的数量数据|不同设施的点位数据|旅游相关数据">
          <g fill="#b07f70" stroke="#f1ece3" stroke-width="3">
            <circle cx="324" cy="252" r="9" /><circle cx="421" cy="351" r="9" /><circle cx="512" cy="279" r="9" /><circle cx="275" cy="394" r="9" />
          </g>
          <g fill="#f1ece3" font-size="12" font-weight="700" text-anchor="middle">
            <text x="324" y="256">+</text><text x="421" y="355">●</text><text x="512" y="283">★</text><text x="275" y="398">i</text>
          </g>
        </g>

        <g class="city-layer" data-category-layer="环境污染及环境治理数据" fill="#8d8b84" opacity="0.24">
          <ellipse cx="406" cy="183" rx="114" ry="24" /><ellipse cx="450" cy="213" rx="96" ry="20" />
        </g>

        <g class="city-layer" data-category-layer="气象相关数据" fill="none" stroke="#728c92" stroke-width="3">
          <path d="M66 160c28-18 55-18 83 0M94 181c24-14 47-14 71 0M481 142c24-15 48-15 73 0" />
        </g>

        <g class="city-layer" data-category-layer="夜间灯光数据" filter="url(#softGlow)">
          <circle cx="273" cy="292" r="6" fill="#d8b77b" /><circle cx="383" cy="322" r="7" fill="#d8b77b" /><circle cx="484" cy="330" r="6" fill="#d8b77b" /><circle cx="236" cy="386" r="5" fill="#d8b77b" />
        </g>
      </svg>

      <div class="city-panel__footer">
        <span>当前图层：<span class="city-layer-label" id="cityLayerLabel">全部城市要素</span></span>
        <span id="cityTimeLabel">日景 · 随时间变化</span>
      </div>
    </aside>

  </div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const cards = Array.from(document.querySelectorAll(".dataset-card"));
    const categoryButtons = Array.from(document.querySelectorAll(".dataset-category"));
    const searchInput = document.getElementById("datasetSearchInput");
    const searchForm = document.getElementById("datasetSearchForm");
    const formatFilter = document.getElementById("formatFilter");
    const accessFilter = document.getElementById("accessFilter");
    const resetButton = document.getElementById("datasetReset");
    const count = document.getElementById("datasetCount");
    const groupCount = document.getElementById("groupCount");
    const emptyState = document.getElementById("datasetEmpty");
    const activeCategoryTitle = document.getElementById("activeCategoryTitle");
    const cityModel = document.getElementById("cityModel");
    const cityLayerLabel = document.getElementById("cityLayerLabel");
    const cityTimeLabel = document.getElementById("cityTimeLabel");
    const cityLayers = Array.from(cityModel.querySelectorAll(".city-layer"));
    const weatherButton = document.getElementById("weatherButton");
    const weatherIcon = document.getElementById("weatherIcon");
    const weatherLabel = document.getElementById("weatherLabel");
    const weatherModes = [
      { key: "sunny", icon: "☀", label: "晴朗" },
      { key: "cloudy", icon: "☁", label: "多云" },
      { key: "rainy", icon: "☂", label: "小雨" },
      { key: "foggy", icon: "≋", label: "薄雾" }
    ];
    let weatherIndex = 0;
    let activeCategory = "all";

    function updateCityModel(category) {
      const showAll = category === "all";
      cityModel.classList.toggle("is-focused", !showAll);
      cityLayers.forEach(function (layer) {
        const categories = layer.dataset.categoryLayer.split("|");
        layer.classList.toggle("is-highlighted", showAll || categories.includes(category));
      });
      cityLayerLabel.textContent = showAll ? "全部城市要素" : category;

      if (category === "气象相关数据" && weatherModes[weatherIndex].key === "sunny") {
        weatherIndex = 1;
        updateWeather();
      }
    }

    function updateDayNight() {
      const hour = new Date().getHours();
      const isNight = hour >= 20 || hour < 6;
      cityModel.classList.toggle("is-night", isNight);
      cityTimeLabel.textContent = isNight ? "夜景 · 城市灯光已开启" : "日景 · 20:00 自动亮灯";
    }

    function updateWeather() {
      const weather = weatherModes[weatherIndex];
      cityModel.dataset.weather = weather.key;
      weatherIcon.textContent = weather.icon;
      weatherLabel.textContent = weather.label;
      weatherButton.setAttribute("aria-label", "当前天气：" + weather.label + "。点击切换天气彩蛋");
    }

    function applyFilters() {
      const keyword = searchInput.value.trim().toLowerCase();
      let visibleCount = 0;
      cards.forEach(function (card) {
        const categoryMatches = activeCategory === "all" || card.dataset.category === activeCategory;
        const formatMatches = formatFilter.value === "all" || card.dataset.format === formatFilter.value;
        const accessMatches = accessFilter.value === "all" || card.dataset.access === accessFilter.value;
        const keywordMatches = !keyword || card.dataset.search.includes(keyword);
        const isVisible = categoryMatches && formatMatches && accessMatches && keywordMatches;
        card.hidden = !isVisible;
        if (isVisible) visibleCount += 1;
      });
      count.textContent = visibleCount;
      groupCount.textContent = visibleCount + " 条";
      emptyState.style.display = visibleCount === 0 ? "block" : "none";
    }

    categoryButtons.forEach(function (button) {
      button.addEventListener("click", function () {
        categoryButtons.forEach(function (item) { item.classList.remove("is-active"); });
        button.classList.add("is-active");
        activeCategory = button.dataset.category;
        activeCategoryTitle.textContent = activeCategory === "all" ? "全部数据" : activeCategory;
        applyFilters();
        updateCityModel(activeCategory);
      });
    });
    searchForm.addEventListener("submit", function (event) { event.preventDefault(); applyFilters(); });
    searchInput.addEventListener("input", applyFilters);
    formatFilter.addEventListener("change", applyFilters);
    accessFilter.addEventListener("change", applyFilters);
    resetButton.addEventListener("click", function () {
      activeCategory = "all";
      searchInput.value = "";
      formatFilter.value = "all";
      accessFilter.value = "all";
      activeCategoryTitle.textContent = "全部数据";
      categoryButtons.forEach(function (item) { item.classList.toggle("is-active", item.dataset.category === "all"); });
      applyFilters();
      updateCityModel("all");
    });
    weatherButton.addEventListener("click", function () {
      weatherIndex = (weatherIndex + 1) % weatherModes.length;
      updateWeather();
    });
    applyFilters();
    updateCityModel("all");
    updateWeather();
    updateDayNight();
    window.setInterval(updateDayNight, 60000);
  });
</script>
