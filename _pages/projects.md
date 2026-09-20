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

  /* 本轮布局修正：城市肌理主视觉、紧凑搜索、上传的三维模型 */
  .dataset-hero {
    min-height: 250px;
    justify-content: center;
    padding: 48px 24px;
    text-align: center;
    background:
      linear-gradient(rgba(245, 242, 234, 0.56), rgba(245, 242, 234, 0.68)),
      url("{{ '/assets/img/city-texture-illustration.webp' | relative_url }}") center / cover no-repeat;
  }

  .dataset-hero::before,
  .dataset-hero::after { display: none; }

  .dataset-hero__inner {
    width: min(720px, 100%);
    margin: 0 auto;
    text-align: center;
  }

  .dataset-hero h1 {
    color: #344147;
    text-shadow: 0 1px 16px rgba(255, 255, 255, 0.84);
  }

  .dataset-hero p {
    margin-bottom: 0;
    color: #526164;
    font-weight: 600;
    text-shadow: 0 1px 12px rgba(255, 255, 255, 0.9);
  }

  .dataset-toolbar__top { align-items: center; }
  .dataset-toolbar__actions {
    display: flex;
    flex: 1;
    align-items: center;
    justify-content: flex-end;
    gap: 10px;
  }

  .dataset-search--compact {
    width: min(390px, 46vw);
    padding: 3px;
    border-color: #d8d7d1;
    box-shadow: none;
  }

  .dataset-search--compact input { padding: 9px 12px; }
  .dataset-search--compact button { min-width: 72px; padding: 0 14px; }

  .city-panel--three { min-height: 680px; background: #e5e9e4; }
  .city-frame-wrap { height: 580px; background: #cfd8d1; }
  .city-model-frame {
    display: block;
    width: 100%;
    height: 100%;
    border: 0;
    background: #cfd8d1;
  }

  .city-live {
    display: inline-flex;
    flex: 0 0 auto;
    align-items: center;
    gap: 7px;
    padding: 6px 9px;
    border: 1px solid #d4d3cd;
    border-radius: 999px;
    color: #5f6e70;
    background: rgba(255, 255, 255, 0.58);
    font-size: 12px;
  }

  .city-live i {
    width: 7px;
    height: 7px;
    border-radius: 50%;
    background: #739681;
    box-shadow: 0 0 0 4px rgba(115, 150, 129, 0.15);
  }

  @media (max-width: 1180px) {
    .city-panel--three { min-height: 0; }
    .city-frame-wrap { height: 540px; }
  }

  @media (max-width: 920px) {
    .dataset-toolbar__top { align-items: flex-start; flex-direction: column; }
    .dataset-toolbar__actions { width: 100%; justify-content: stretch; }
    .dataset-search--compact { width: 100%; }
  }

  @media (max-width: 600px) {
    .dataset-toolbar__actions { align-items: stretch; flex-direction: column; }
    .dataset-reset { align-self: flex-end; }
    .city-frame-wrap { height: 470px; }
  }
</style>

<div class="dataset-page" id="datasetPage">
  <section class="dataset-hero" aria-labelledby="datasetTitle">
    <div class="dataset-hero__inner">
      <h1 id="datasetTitle">401 数据学社</h1>
      <p>几千种城市数据等你来获取！</p>
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
          <div class="dataset-toolbar__actions">
            <form class="dataset-search dataset-search--compact" id="datasetSearchForm" role="search">
              <input id="datasetSearchInput" type="search" placeholder="⌕  搜索数据名称" aria-label="搜索数据名称">
              <button type="submit">搜索</button>
            </form>
            <button class="dataset-reset" id="datasetReset" type="button">↻&nbsp; 重置筛选</button>
          </div>
        </div>
        <div class="dataset-filters">
          <label>数据格式：
            <select id="formatFilter" aria-label="按数据格式筛选">
              <option value="all">全部</option><option value="tif栅格数据">tif栅格数据</option><option value="shp矢量数据">shp矢量数据</option><option value="表格数据">表格数据</option><option value="其他格式">其他格式</option>
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

    <aside class="city-panel city-panel--three" aria-labelledby="cityModelTitle">
      <div class="city-panel__header">
        <div>
          <h3 id="cityModelTitle">城市要素模型</h3>
          <p>拖拽旋转、滚轮缩放；选择分类时模型同步显示</p>
        </div>
        <span class="city-live"><i aria-hidden="true"></i>实时交互</span>
      </div>
      <div class="city-frame-wrap">
        <iframe
          id="cityModelFrame"
          class="city-model-frame"
          src="{{ '/assets/html/city-model-embed.html' | relative_url }}"
          title="401城市要素交互模型"
          loading="eager"
          allow="fullscreen"
          referrerpolicy="strict-origin-when-cross-origin"
        ></iframe>
      </div>
      <div class="city-panel__footer">
        <span>当前图层：<span class="city-layer-label" id="cityLayerLabel">全部城市要素</span></span>
        <span>天气与时间可在模型右上角调整</span>
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
    const resetButton = document.getElementById("datasetReset");
    const count = document.getElementById("datasetCount");
    const groupCount = document.getElementById("groupCount");
    const emptyState = document.getElementById("datasetEmpty");
    const activeCategoryTitle = document.getElementById("activeCategoryTitle");
    const cityModelFrame = document.getElementById("cityModelFrame");
    const cityLayerLabel = document.getElementById("cityLayerLabel");
    let activeCategory = "all";

    function updateCityModel(category) {
      cityLayerLabel.textContent = category === "all" ? "全部城市要素" : category;
      if (cityModelFrame.contentWindow) {
        cityModelFrame.contentWindow.postMessage(
          { type: "set-city-layer", category: category },
          window.location.origin
        );
      }
    }

    function applyFilters() {
      const keyword = searchInput.value.trim().toLowerCase();
      let visibleCount = 0;
      cards.forEach(function (card) {
        const categoryMatches = activeCategory === "all" || card.dataset.category === activeCategory;
        const formatMatches = formatFilter.value === "all" || card.dataset.format === formatFilter.value;
        const keywordMatches = !keyword || card.dataset.search.includes(keyword);
        const isVisible = categoryMatches && formatMatches && keywordMatches;
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
    resetButton.addEventListener("click", function () {
      activeCategory = "all";
      searchInput.value = "";
      formatFilter.value = "all";
      activeCategoryTitle.textContent = "全部数据";
      categoryButtons.forEach(function (item) { item.classList.toggle("is-active", item.dataset.category === "all"); });
      applyFilters();
      updateCityModel("all");
    });
    cityModelFrame.addEventListener("load", function () {
      updateCityModel(activeCategory);
    });
    applyFilters();
    updateCityModel("all");
  });
</script>
