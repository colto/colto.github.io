# frozen_string_literal: true

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Extensions
activate :imageoptim

activate :gh_pages do |gh_pages|
  gh_pages.remote = 'git@github.com:colto/colto.github.io.git'
  gh_pages.branch = :master
end
