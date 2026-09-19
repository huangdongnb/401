---
layout: projects
title: states
permalink: /states/
nav: true
nav_order: 2
---

<!-- pages/projects.md -->
<div class="projects">
{% if site.enable_project_categories and page.display_categories %}
  <!-- Display categorized projects -->
  {% for category in page.display_categories %}
  <a id="{{ category }}" href=".#{{ category }}">
    <h2 class="category">{{ category }}</h2>
  </a>
  {% assign categorized_projects = site.projects | where: "category", category %}
  {% assign sorted_projects = categorized_projects | sort: "importance" %}
  <!-- Generate cards for each project -->
  {% if page.horizontal %}
  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}

{% else %}

<!-- Display projects without categories -->

{% assign sorted_projects = site.projects | sort: "importance" %}

  <!-- Generate cards for each project -->

{% if page.horizontal %}

  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
  {% endif %}
{% endif %}
</div>
---
layout: projects
title: states
permalink: /states/
nav: true
nav_order: 2
---

<div style="background-color: #0d1b2a; background-image: url('../assets/img/search_bg.jpg'); background-size: cover; background-position: center; padding: 60px 20px; text-align: center; border-radius: 8px; margin-bottom: 40px; box-shadow: 0 4px 12px rgba(0,0,0,0.1);">
  <h1 style="color: white; margin-bottom: 10px; font-weight: bold;">401 数据学社</h1>
  <p style="color: #a0aec0; margin-bottom: 25px;">探索与获取城市建成环境与气候韧性相关数据集</p>
  
  <div style="max-width: 600px; margin: 0 auto; display: flex; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
    <input type="text" placeholder="搜索数据集名称..." style="flex: 1; padding: 14px 20px; border: none; border-radius: 5px 0 0 5px; outline: none; font-size: 16px;">
    <button style="padding: 14px 30px; background-color: #4a90e2; color: white; border: none; border-radius: 0 5px 5px 0; cursor: pointer; font-size: 16px; font-weight: bold;">🔍 搜索</button>
  </div>
</div>
