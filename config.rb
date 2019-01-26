set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascript"
set :images_dir, "assets/images"
set :fonts_dir, "assets/fonts"

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

configure :build do
  sass = {
    :output_style => :compact,
    :line_comments => false
  }
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end
