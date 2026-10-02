---
layout: page
permalink: /publications/
title: Publications
description: Selected publications from 402 Urban Lab.
nav: true
nav_order: 2
---

<link rel="stylesheet" href="{{ '/assets/css/featured-publications.css' | relative_url }}">
<style>.post:has(#selected-papers) > .post-header{display:none}</style>

<section id="selected-papers" aria-label="Selected publications">
  <div class="head"><div><h2>Selected publications</h2><p class="intro">Explore research questions, publication details, and figures in one place.</p></div><span class="count">05 papers</span></div>
  <div id="papers"></div>
</section>
<dialog id="paper-lightbox" aria-label="Figure preview"><div class="modal-bar"><button class="close" id="close-paper-modal" aria-label="Close figure">×</button></div><img class="modal-image" id="modal-image" alt=""><div class="caption" id="modal-caption"></div></dialog>
<script src="{{ '/assets/js/featured-publications.js' | relative_url }}" defer></script>
