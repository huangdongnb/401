---
layout: page
permalink: /teaching/
title: Teaching
description: Document academic exchange and encourage participation in research; value the cultivation of academic literacy and advocate mutually supportive faculty–student mentoring.
nav: true
nav_order: 6
---

<style>
  .post-title {
    font-family: Georgia, "Times New Roman", serif;
    font-weight: 400;
    line-height: 1.2;
  }

  .post-description {
    color: var(--global-text-color-light, #656a70);
    font-family: Georgia, "Times New Roman", serif;
    font-size: clamp(1rem, 1.35vw, 1.15rem);
    font-weight: 300;
    line-height: 1.78;
  }

  #academic-exchange {
    --activity-ink: var(--global-text-color, #17191c);
    --activity-muted: var(--global-text-color-light, #656a70);
    --activity-line: var(--global-divider-color, #dedfe1);
    --activity-accent: var(--global-theme-color, #b324a9);
    --activity-green: #2f8e68;
    width: 100%;
    max-width: 1170px;
    margin: 0 auto;
    padding-top: 1.3rem;
    color: var(--activity-ink);
  }

  #academic-exchange .activity-section-heading {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    margin: 0;
    font-family: Georgia, "Times New Roman", serif;
    font-size: clamp(1.8rem, 3vw, 2.4rem);
    font-weight: 400;
    line-height: 1.2;
  }

  #academic-exchange .activity-calendar-icon {
    width: 1.85rem;
    height: 1.85rem;
    flex: 0 0 1.85rem;
  }

  #academic-exchange .activity-label {
    display: inline-flex;
    align-items: center;
    margin-top: 1.3rem;
    padding: 0.45rem 1rem 0.5rem;
    border: 2px solid var(--activity-accent);
    border-radius: 999px;
    color: var(--activity-accent);
    font-size: 0.8rem;
    font-weight: 700;
    line-height: 1;
  }

  #academic-exchange .activity-list {
    margin-top: 3.4rem;
  }

  #academic-exchange .activity-item {
    margin-bottom: 3.2rem;
  }

  #academic-exchange .activity-item[hidden] {
    display: none !important;
  }

  #academic-exchange .activity-heading {
    display: grid;
    grid-template-columns: auto minmax(0, 1fr) auto;
    align-items: baseline;
    column-gap: 2ch;
    padding-bottom: 0.9rem;
    border-bottom: 1px solid var(--activity-line);
    font-family: Georgia, "Times New Roman", serif;
  }

  #academic-exchange .activity-year {
    font-size: clamp(2rem, 3vw, 2.75rem);
    font-weight: 700;
    line-height: 1;
    letter-spacing: -0.025em;
  }

  #academic-exchange .activity-title,
  #academic-exchange .activity-date {
    font-size: clamp(1rem, 1.4vw, 1.18rem);
    font-weight: 400;
    line-height: 1.45;
  }

  #academic-exchange .activity-title {
    min-width: 0;
  }

  #academic-exchange a.activity-title {
    color: inherit;
    text-decoration: none;
  }

  #academic-exchange a.activity-title:hover,
  #academic-exchange a.activity-title:focus-visible {
    color: var(--activity-accent);
    text-decoration: underline;
    text-underline-offset: 0.18em;
  }

  #academic-exchange .activity-date {
    color: var(--activity-muted);
    white-space: nowrap;
  }

  #academic-exchange .activity-content {
    display: grid;
    grid-template-columns: minmax(340px, 460px) minmax(0, 1fr);
    gap: clamp(2.1rem, 5vw, 4rem);
    align-items: center;
    padding: 1.5rem 0 2rem;
    border-bottom: 1px solid var(--activity-line);
  }

  #academic-exchange .activity-media {
    width: 100%;
    margin: 0;
    overflow: hidden;
    background: #edf2ef;
    aspect-ratio: 16 / 9;
  }

  #academic-exchange .activity-media img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  #academic-exchange .activity-media img.activity-poster {
    object-fit: contain;
  }

  #academic-exchange .activity-copy {
    max-width: 640px;
  }

  #academic-exchange .activity-eyebrow {
    margin: 0 0 0.8rem;
    color: var(--activity-green);
    font-size: 0.72rem;
    font-weight: 700;
    letter-spacing: 0.15em;
    text-transform: uppercase;
  }

  #academic-exchange .activity-description {
    margin: 0;
    color: var(--activity-muted);
    font-family: Georgia, "Times New Roman", serif;
    font-size: clamp(1rem, 1.35vw, 1.15rem);
    line-height: 1.78;
  }

  #academic-exchange .activity-pagination {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 0.85rem;
    margin-top: -0.5rem;
  }

  #academic-exchange .activity-pagination[hidden] {
    display: none !important;
  }

  #academic-exchange .activity-page-button {
    padding: 0.15rem 0;
    border: 0;
    background: transparent;
    color: var(--activity-muted);
    font: inherit;
    font-size: 0.9rem;
    cursor: pointer;
    transition: color 160ms ease;
  }

  #academic-exchange .activity-page-button:hover,
  #academic-exchange .activity-page-button:focus-visible {
    color: var(--activity-accent);
    outline: none;
  }

  #academic-exchange .activity-page-button[aria-current="page"] {
    color: var(--activity-accent);
    font-weight: 700;
    text-decoration: underline;
    text-underline-offset: 0.28rem;
    cursor: default;
  }

  #academic-exchange .activity-page-button:disabled:not([aria-current="page"]) {
    color: var(--activity-line);
    cursor: default;
  }

  @media (max-width: 760px) {
    #academic-exchange .activity-list {
      margin-top: 2.7rem;
    }

    #academic-exchange .activity-item {
      margin-bottom: 2.6rem;
    }

    #academic-exchange .activity-heading {
      grid-template-columns: auto minmax(0, 1fr);
      row-gap: 0.45rem;
    }

    #academic-exchange .activity-date {
      grid-column: 2;
      justify-self: start;
    }

    #academic-exchange .activity-content {
      grid-template-columns: 1fr;
      gap: 1.6rem;
    }
  }
</style>

<section id="academic-exchange" aria-labelledby="academic-exchange-title">
  <h2 class="activity-section-heading" id="academic-exchange-title">
    <svg class="activity-calendar-icon" viewBox="0 0 32 32" aria-hidden="true">
      <rect x="4" y="6" width="24" height="22" rx="3" fill="currentColor"></rect>
      <rect x="7" y="11" width="18" height="14" rx="1.5" fill="#fff"></rect>
      <rect x="9" y="14" width="4" height="4" rx=".5" fill="currentColor"></rect>
      <rect x="14" y="14" width="4" height="4" rx=".5" fill="currentColor"></rect>
      <rect x="19" y="14" width="4" height="4" rx=".5" fill="currentColor"></rect>
      <rect x="9" y="19" width="4" height="4" rx=".5" fill="currentColor"></rect>
      <rect x="14" y="19" width="4" height="4" rx=".5" fill="currentColor"></rect>
      <rect x="19" y="19" width="4" height="4" rx=".5" fill="currentColor"></rect>
      <rect x="9" y="3" width="3" height="7" rx="1.5" fill="currentColor"></rect>
      <rect x="20" y="3" width="3" height="7" rx="1.5" fill="currentColor"></rect>
    </svg>
    Academic Exchange
  </h2>
  <span class="activity-label">Activity Timeline</span>

  <div class="activity-list">
    <article class="activity-item" data-date="2025-10-23">
      <div class="activity-heading">
        <span class="activity-year">2025</span>
        <a
          class="activity-title"
          href="https://mp.weixin.qq.com/s/cjafBsnDPHMMVbAf1waGpA"
          target="_blank"
          rel="noopener noreferrer"
        >Academic Lecture: The Impact of Urban Green Spaces on Public Health and Well-Being</a>
        <time class="activity-date" datetime="2025-10-23">10-23</time>
      </div>

      <div class="activity-content">
        <figure class="activity-media">
          <img src="{{ '/assets/img/teaching/lecture-2025-10-23.webp' | relative_url }}" alt="Professor Yan Chen speaking at an academic lecture on urban green space and public health">
        </figure>

        <div class="activity-copy">
          <p class="activity-eyebrow">Lecture Overview</p>
          <p class="activity-description">Using the hyper-dense city of Hong Kong as a case study, Professor Yan Chen moved beyond the limitations of conventional research. Through a serial mediation model, she directly and indirectly examined the potential pathways linking the objective configuration of green space, subjective evaluations, use behavior, and self-reported health and well-being.</p>
        </div>
      </div>
    </article>

    <article class="activity-item" data-date="2025-10-08">
      <div class="activity-heading">
        <span class="activity-year">2025</span>
        <a
          class="activity-title"
          href="https://mp.weixin.qq.com/s/c4R9dlT_-ZDw5s3IxCvN9Q"
          target="_blank"
          rel="noopener noreferrer"
        >Guangdong Graduate Academic Forum on Landscape Architecture</a>
        <time class="activity-date" datetime="2025-10-08">10-8</time>
      </div>

      <div class="activity-content">
        <figure class="activity-media">
          <img class="activity-poster" src="{{ '/assets/img/teaching/forum-2025-10-08.webp' | relative_url }}" alt="Poster for the 2025 Guangdong Graduate Academic Forum on Landscape Architecture">
        </figure>

        <div class="activity-copy">
          <p class="activity-eyebrow">Forum Overview</p>
          <p class="activity-description">This forum focuses on frontier theories, innovative practices, and emerging trends in urban environmental renewal and rural revitalization. It aims to explore the important role of landscape architecture in advancing integrated urban–rural development and the sustainable improvement of human settlements.</p>
        </div>
      </div>
    </article>
  </div>

  <nav class="activity-pagination" aria-label="Academic exchange pages" hidden></nav>
</section>

<script>
  (() => {
    const root = document.getElementById('academic-exchange');
    if (!root) return;

    const list = root.querySelector('.activity-list');
    const pagination = root.querySelector('.activity-pagination');
    const items = Array.from(list.querySelectorAll('.activity-item'));
    const itemsPerPage = 3;
    const totalPages = Math.max(1, Math.ceil(items.length / itemsPerPage));

    items
      .sort((a, b) => b.dataset.date.localeCompare(a.dataset.date))
      .forEach((item) => list.appendChild(item));

    const pageFromHash = () => {
      const match = window.location.hash.match(/^#activity-page-(\d+)$/);
      const requested = match ? Number(match[1]) : 1;
      return Math.min(Math.max(requested, 1), totalPages);
    };

    const render = (page) => {
      const start = (page - 1) * itemsPerPage;
      const end = start + itemsPerPage;

      items.forEach((item, index) => {
        item.hidden = index < start || index >= end;
      });

      pagination.replaceChildren();
      if (totalPages <= 1) {
        pagination.hidden = true;
        return;
      }

      pagination.hidden = false;
      for (let pageNumber = 1; pageNumber <= totalPages; pageNumber += 1) {
        const button = document.createElement('button');
        button.type = 'button';
        button.className = 'activity-page-button';
        button.textContent = String(pageNumber);
        button.setAttribute('aria-label', `Go to academic exchange page ${pageNumber}`);

        if (pageNumber === page) {
          button.setAttribute('aria-current', 'page');
          button.disabled = true;
        } else {
          button.addEventListener('click', () => {
            window.location.hash = `activity-page-${pageNumber}`;
          });
        }

        pagination.appendChild(button);
      }

      const nextButton = document.createElement('button');
      nextButton.type = 'button';
      nextButton.className = 'activity-page-button activity-next-button';
      nextButton.textContent = 'Next';
      nextButton.setAttribute('aria-label', 'Go to the next academic exchange page');

      if (page >= totalPages) {
        nextButton.disabled = true;
      } else {
        nextButton.addEventListener('click', () => {
          window.location.hash = `activity-page-${page + 1}`;
        });
      }

      pagination.appendChild(nextButton);
    };

    render(pageFromHash());
    window.addEventListener('hashchange', () => render(pageFromHash()));
  })();
</script>
