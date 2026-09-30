require "json"

# Keep the global command palette focused on the five visible navigation pages.
# This runs after Jekyll writes the site so it also covers standalone HTML pages
# such as states/index.html, which Jekyll otherwise copies as static files.
Jekyll::Hooks.register :site, :post_write do |site|
  baseurl = site.config.fetch("baseurl", "").to_s.sub(%r{/+\z}, "")
  pages = [
    ["About", "/"],
    ["States", "/states/"],
    ["Publications", "/publications/"],
    ["Teaching", "/teaching/"],
    ["Team", "/team/"]
  ]

  items = pages.map do |title, path|
    url = "#{baseurl}#{path}"
    <<~ITEM.strip
      {
        id: #{("nav-" + title.downcase).to_json},
        title: #{title.to_json},
        section: "Navigation",
        handler: () => { window.location.href = #{url.to_json}; }
      }
    ITEM
  end

  script = "<script>\nconst ninja = document.querySelector('ninja-keys');\n" \
           "if (ninja) ninja.data = [\n#{items.join(",\n")}\n];\n</script>"
  original_index = %r{<script>\s*// get the ninja-keys element\b.*?</script>}m

  Dir.glob(File.join(site.dest, "**", "*.html")).each do |file|
    html = File.read(file, encoding: "UTF-8")
    next unless html.match?(original_index)

    File.write(file, html.sub(original_index, script), mode: "w:UTF-8")
  end
end
