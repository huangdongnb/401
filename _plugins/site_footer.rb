# Apply the site's compact footer to rendered Jekyll pages and static HTML.
# The post-write hook includes standalone pages such as states/index.html.
Jekyll::Hooks.register :site, :post_write do |site|
  footer_pattern = /<footer\b[^>]*\brole=["']contentinfo["'][^>]*>[\s\S]*?<\/footer>/i
  footer_text = "© 2026 Guangzhou 402 City Lab."
  footer_style = "position: static !important; bottom: auto !important; background: #1c1c1c !important; color: #e8e8e8 !important; border-top-color: #1c1c1c !important;"
  text_style = "text-align: center; color: #e8e8e8 !important;"

  Dir.glob(File.join(site.dest, "**", "*.html")).each do |file|
    html = File.read(file, encoding: "UTF-8")
    next unless html.match?(footer_pattern)

    updated = html.sub(footer_pattern) do |footer|
      opening = footer.match(/\A<footer\b[^>]*>/i)[0]
      if opening.match?(/\sstyle=/i)
        opening = opening.sub(/\sstyle=(["'])(.*?)\1/i) do
          %( style="#{Regexp.last_match(2)}; #{footer_style}")
        end
      else
        opening = opening.sub(/>\z/, %( style="#{footer_style}">))
      end
      %(#{opening}<div class="container mt-0" style="#{text_style}">#{footer_text}</div></footer>)
    end
    File.write(file, updated, mode: "w:UTF-8")
  end
end
