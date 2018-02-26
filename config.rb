require 'redcarpet'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :syntax

activate :directory_indexes

helpers do
  def page_title
    "Sander Beekman"
  end

  def description
    current_page.data.description ||
    current_page.data.subtitle ||
    "Sander Beekman | #{blog_controller.name rescue 'Home'}"
  end
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :gzip
  activate :relative_assets
end
