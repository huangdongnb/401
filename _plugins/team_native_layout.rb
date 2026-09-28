# frozen_string_literal: true

# The Team page is intentionally authored as a self-contained prototype. At
# build time, place its content inside the site's normal layout so the global
# navigation, search, theme switcher, and responsive menu remain available.
Jekyll::Hooks.register :site, :post_read do |site|
  enabled = site.data.dig("team_native_layout", "enabled")
  next unless enabled

  site.pages.each do |page|
    next unless page.data["permalink"] == "/team/"

    content = page.content
    content = content.sub(/\A<!doctype html>.*?<style>/m, "<style>")
    content = content.sub(%r{</style>\s*</head>\s*<body>}m, "</style>")
    content = content.sub(%r{\s*</body>\s*</html>\s*\z}m, "\n")

    shell_css = <<~CSS
      body > .container.mt-5[role="main"] {
        width: 100%;
        max-width: none;
        margin-top: 0 !important;
        padding-right: 0;
        padding-left: 0;
      }
    CSS

    page.content = content.sub("<style>", "<style>\n#{shell_css}")
    page.data["layout"] = "default"
  end
end
