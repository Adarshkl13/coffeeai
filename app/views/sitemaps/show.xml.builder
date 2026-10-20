xml.instruct! :xml, version: "1.0", encoding: "UTF-8"
xml.urlset xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9" do
  @urls.each do |path|
    xml.url { xml.loc site_url + path }
  end
  @courses.each do |course|
    xml.url do
      xml.loc site_url + course_path(course)
      xml.lastmod course.updated_at.to_date.iso8601
    end
  end
  @posts.each do |post|
    xml.url do
      xml.loc site_url + blog_path(post)
      xml.lastmod post.published_on.iso8601
    end
  end
end
