# frozen_string_literal: true

# Add dark-mode color fixes after all page content has been rendered.
# This covers regular Jekyll pages and standalone HTML such as states/index.html
# without changing any light-mode layout, typography, content, or interaction.
Jekyll::Hooks.register :site, :post_write do |site|
  style = <<~HTML
    <style id="site-dark-mode-fix">
      html[data-theme="dark"],
      html[data-theme="dark"] body {
        background: var(--global-bg-color, #181a1b) !important;
        color: var(--global-text-color, #f2f2f2) !important;
      }

      html[data-theme="dark"] #navbar {
        background: rgba(24, 26, 27, 0.97) !important;
        border-bottom-color: #34383b !important;
        box-shadow: 0 2px 14px rgba(0, 0, 0, 0.18) !important;
      }

      html[data-theme="dark"] #navbar .navbar-brand,
      html[data-theme="dark"] #navbar .nav-link,
      html[data-theme="dark"] #navbar .dropdown-item,
      html[data-theme="dark"] #navbar #light-toggle {
        color: #f2f2f2 !important;
      }

      html[data-theme="dark"] #navbar .nav-item.active > .nav-link,
      html[data-theme="dark"] #navbar .nav-link:hover {
        color: #ffffff !important;
      }

      /* Regular content pages and About. */
      html[data-theme="dark"] .post-title,
      html[data-theme="dark"] .post-header .desc,
      html[data-theme="dark"] .post-header .post-description,
      html[data-theme="dark"] .post article > p,
      html[data-theme="dark"] .post article > ul,
      html[data-theme="dark"] .post article > ol,
      html[data-theme="dark"] .post article > blockquote,
      html[data-theme="dark"] .post article > .clearfix,
      html[data-theme="dark"] .post article > .clearfix p,
      html[data-theme="dark"] .post article > .clearfix li,
      html[data-theme="dark"] .post article > .clearfix strong,
      html[data-theme="dark"] .profile .more-info,
      html[data-theme="dark"] .profile .more-info p {
        color: var(--global-text-color, #f2f2f2) !important;
      }

      /* Publications: convert fixed light-theme ink and surfaces. */
      html[data-theme="dark"] #selected-papers {
        --ink: #f2f4f5 !important;
        --sub: #b8c0c5 !important;
        --rule: #3b4145 !important;
        --blue: #8bb8cf !important;
        color: #f2f4f5 !important;
      }

      html[data-theme="dark"] #selected-papers h2,
      html[data-theme="dark"] #selected-papers h3 {
        color: #f2f4f5 !important;
      }

      html[data-theme="dark"] #selected-papers .intro,
      html[data-theme="dark"] #selected-papers .count,
      html[data-theme="dark"] #selected-papers .authors,
      html[data-theme="dark"] #selected-papers .journal,
      html[data-theme="dark"] #selected-papers .doi,
      html[data-theme="dark"] #selected-papers .gallery-foot,
      html[data-theme="dark"] #selected-papers .year {
        color: #b8c0c5 !important;
      }

      html[data-theme="dark"] #selected-papers .action:not(.primary) {
        background: #24292c !important;
        border-color: #56666f !important;
        color: #c7dce7 !important;
      }

      html[data-theme="dark"] #selected-papers .action:not(.primary):hover {
        background: #2d3539 !important;
        border-color: #80a7bb !important;
      }

      html[data-theme="dark"] #selected-papers .abstract {
        background: #22272a !important;
        border-left-color: #668b9e !important;
        color: #c5ccd0 !important;
      }

      html[data-theme="dark"] #selected-papers .abstract strong {
        color: #9fc2d3 !important;
      }

      html[data-theme="dark"] #paper-lightbox {
        background: #1f2326 !important;
        color: #f2f2f2 !important;
      }

      html[data-theme="dark"] #paper-lightbox .modal-bar {
        border-bottom-color: #3b4145 !important;
      }

      html[data-theme="dark"] #paper-lightbox .close,
      html[data-theme="dark"] #paper-lightbox .caption {
        color: #e5e8ea !important;
      }

      /* States: make the page respond to the global dark-mode switch. */
      html[data-theme="dark"] body.fixed-top-nav:has(.dataset-page) {
        --global-theme-color: #b8ced9 !important;
        --global-hover-color: #e3edf1 !important;
        background: #181a1b !important;
        color: #f2f2f2 !important;
      }

      html[data-theme="dark"] .dataset-page {
        --dataset-blue: #9cb8c6 !important;
        --dataset-blue-dark: #c2d3db !important;
        --dataset-ink: #f1f3f4 !important;
        --dataset-muted: #b2bbc0 !important;
        --dataset-line: #3a4044 !important;
        background: #181a1b !important;
        color: #f1f3f4 !important;
      }

      html[data-theme="dark"] .dataset-hero {
        background: linear-gradient(135deg, #202326 0%, #191b1d 58%, #111315 100%) !important;
      }

      html[data-theme="dark"] .dataset-hero::before {
        display: block !important;
        filter: grayscale(1) contrast(0.9) brightness(0.48) !important;
        opacity: 0.34 !important;
      }

      html[data-theme="dark"] .dataset-hero::after {
        display: block !important;
        background:
          linear-gradient(90deg, rgba(18, 20, 22, 0.82), rgba(18, 20, 22, 0.42) 55%, rgba(10, 12, 13, 0.72)),
          linear-gradient(rgba(220, 225, 228, 0.045) 1px, transparent 1px),
          linear-gradient(90deg, rgba(220, 225, 228, 0.045) 1px, transparent 1px) !important;
        background-size: auto, 36px 36px, 36px 36px !important;
        box-shadow: none !important;
      }

      html[data-theme="dark"] .dataset-hero h1 {
        color: #ffffff !important;
        text-shadow: 0 1px 16px rgba(0, 0, 0, 0.72) !important;
      }

      html[data-theme="dark"] .dataset-hero p {
        color: #d2d7da !important;
        text-shadow: 0 1px 12px rgba(0, 0, 0, 0.72) !important;
      }

      html[data-theme="dark"] .dataset-sidebar,
      html[data-theme="dark"] .city-panel,
      html[data-theme="dark"] .city-panel--three {
        background: #202326 !important;
        border-color: #3a4044 !important;
        box-shadow: none !important;
      }

      html[data-theme="dark"] .dataset-sidebar__title,
      html[data-theme="dark"] .dataset-toolbar__top h2,
      html[data-theme="dark"] .dataset-group__heading,
      html[data-theme="dark"] .city-panel__header h3 {
        color: #f3f4f5 !important;
      }

      html[data-theme="dark"] .dataset-sidebar__title span,
      html[data-theme="dark"] .dataset-search__icon,
      html[data-theme="dark"] .dataset-result-count strong,
      html[data-theme="dark"] .dataset-reset,
      html[data-theme="dark"] .dataset-filters select,
      html[data-theme="dark"] .city-layer-label {
        color: #a9c2cf !important;
      }

      html[data-theme="dark"] .category-index {
        background: #303539 !important;
        color: #c5cbd0 !important;
      }

      html[data-theme="dark"] .dataset-category {
        color: #d0d5d8 !important;
      }

      html[data-theme="dark"] .dataset-category:hover,
      html[data-theme="dark"] .dataset-category.is-active {
        background: #2b3439 !important;
        color: #ffffff !important;
        box-shadow: inset 2px 0 #7f9dac !important;
      }

      html[data-theme="dark"] .dataset-category.is-active .category-index {
        background: #516a77 !important;
        color: #ffffff !important;
      }

      html[data-theme="dark"] .dataset-search,
      html[data-theme="dark"] .dataset-search--compact {
        background: #222629 !important;
        border-color: #41484c !important;
        box-shadow: none !important;
      }

      html[data-theme="dark"] .dataset-search input {
        background: transparent !important;
        color: #f2f3f4 !important;
      }

      html[data-theme="dark"] .dataset-search input::placeholder {
        color: #929da3 !important;
      }

      html[data-theme="dark"] .dataset-search__clear {
        background: #343a3e !important;
        color: #d4d9dc !important;
      }

      html[data-theme="dark"] .dataset-search__hint,
      html[data-theme="dark"] .dataset-result-count,
      html[data-theme="dark"] .dataset-group__heading span,
      html[data-theme="dark"] .dataset-card__more,
      html[data-theme="dark"] .dataset-card__arrow,
      html[data-theme="dark"] .city-panel__header p,
      html[data-theme="dark"] .city-panel__footer {
        color: #aeb7bc !important;
      }

      html[data-theme="dark"] .dataset-filters {
        border-color: #3a4044 !important;
        color: #c0c7ca !important;
      }

      html[data-theme="dark"] .dataset-filters select,
      html[data-theme="dark"] .dataset-filters option {
        background: #222629 !important;
      }

      html[data-theme="dark"] .dataset-card {
        background: #222629 !important;
        border-color: #343a3e !important;
        box-shadow: none !important;
      }

      html[data-theme="dark"] .dataset-card:hover {
        background: #282d30 !important;
        border-color: #56646b !important;
        box-shadow: 0 7px 20px rgba(0, 0, 0, 0.22) !important;
      }

      html[data-theme="dark"] .dataset-card__title {
        color: #f2f4f5 !important;
      }

      html[data-theme="dark"] .dataset-card__title:hover {
        color: #b8d0dc !important;
      }

      html[data-theme="dark"] .dataset-badge {
        background: #343a3e !important;
        color: #c7cdd0 !important;
      }

      html[data-theme="dark"] .dataset-empty {
        border-color: #485055 !important;
        color: #b2bbc0 !important;
      }

      html[data-theme="dark"] .dataset-page-button {
        background: #222629 !important;
        border-color: #41484c !important;
        color: #c4cbcf !important;
      }

      html[data-theme="dark"] .dataset-page-button:hover:not(:disabled) {
        background: #2b3135 !important;
        border-color: #64747d !important;
        color: #ffffff !important;
      }

      html[data-theme="dark"] .dataset-page-button.is-active {
        background: #526d7b !important;
        border-color: #6e8b99 !important;
        color: #ffffff !important;
      }

      html[data-theme="dark"] .city-live,
      html[data-theme="dark"] .weather-button {
        background: #2b3033 !important;
        border-color: #454c50 !important;
        color: #d3d8da !important;
      }

      html[data-theme="dark"] .city-frame-wrap,
      html[data-theme="dark"] .city-model-frame {
        background: #1c1f21 !important;
      }

      html[data-theme="dark"] .city-model-frame {
        filter: brightness(0.76) contrast(1.04);
      }

      /* Keep the existing States login artwork and light dialog unchanged. */
      html[data-theme="dark"] .login-dialog {
        background: #ffffff !important;
        color: #263238 !important;
      }

      html[data-theme="dark"] .login-dialog .login-form h2,
      html[data-theme="dark"] .login-dialog .login-form > p,
      html[data-theme="dark"] .login-dialog .field label,
      html[data-theme="dark"] .login-dialog .input-shell input {
        color: #263238 !important;
      }

      /* Team: replace fixed white surfaces and dark ink only in dark mode. */
      html[data-theme="dark"] body:has(.team-section) {
        --ink: #f3f3f3 !important;
        --muted: #b2b6b9 !important;
        --body: #d1d4d6 !important;
        --line: #3b3f42 !important;
      }

      html[data-theme="dark"] .advisor-section,
      html[data-theme="dark"] .team-section,
      html[data-theme="dark"] .section-transition {
        background: var(--global-bg-color, #181a1b) !important;
      }

      html[data-theme="dark"] .advisor-heading,
      html[data-theme="dark"] .section-transition,
      html[data-theme="dark"] .intro h1 span {
        color: #b8bdc0 !important;
      }

      html[data-theme="dark"] .advisor-heading::before,
      html[data-theme="dark"] .section-transition::before,
      html[data-theme="dark"] .advisor-name,
      html[data-theme="dark"] .advisor-detail h2,
      html[data-theme="dark"] .intro h1 .title-main,
      html[data-theme="dark"] .member-name,
      html[data-theme="dark"] .figure-fallback {
        color: #f4f4f4 !important;
      }

      html[data-theme="dark"] .advisor-role,
      html[data-theme="dark"] .advisor-credentials li,
      html[data-theme="dark"] .advisor-lead,
      html[data-theme="dark"] .advisor-detail p,
      html[data-theme="dark"] .intro p {
        color: #d0d4d6 !important;
      }

      html[data-theme="dark"] .advisor-eyebrow,
      html[data-theme="dark"] .advisor-detail h2 b,
      html[data-theme="dark"] .member-grade {
        color: #aeb5b9 !important;
      }

      html[data-theme="dark"] .advisor-heading::after,
      html[data-theme="dark"] .section-transition::after {
        background: #3b3f42 !important;
      }

      html[data-theme="dark"] .advisor-credentials,
      html[data-theme="dark"] .advisor-details,
      html[data-theme="dark"] .member-card {
        border-color: #3b3f42 !important;
      }

      html[data-theme="dark"] .member-card {
        background: #202326 !important;
      }

      html[data-theme="dark"] .figure-stage {
        color: #f1f1f1 !important;
      }
    </style>
  HTML

  Dir.glob(File.join(site.dest, "**", "*.html")).each do |file|
    html = File.read(file, encoding: "UTF-8")
    next unless html.match?(%r{</head>}i)
    next if html.include?('id="site-dark-mode-fix"')

    File.write(file, html.sub(%r{</head>}i, "#{style}</head>"), mode: "w:UTF-8")
  end
end
