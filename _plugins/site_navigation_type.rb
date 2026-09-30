# Apply the site's navigation typography to every generated page,
# including standalone HTML pages copied into the output directory.
Jekyll::Hooks.register :site, :post_write do |site|
  style = <<~HTML
    <style id="site-navigation-type">
      nav.navbar .navbar-brand,
      nav.navbar .navbar-nav .nav-link,
      nav.navbar .navbar-nav .dropdown-item {
        font-family: Georgia, "Times New Roman", serif !important;
        font-weight: 700 !important;
      }
    </style>
  HTML

  Dir.glob(File.join(site.dest, "**", "*.html")).each do |file|
    html = File.read(file, encoding: "UTF-8")
    next unless html.include?("navbar") && html.match?(%r{</head>}i)
    next if html.include?('id="site-navigation-type"')

    File.write(file, html.sub(%r{</head>}i, "#{style}</head>"), mode: "w:UTF-8")
  end
end
