class HomeController < ApplicationController
  def index
    return redirect_to dashboard_path if user_signed_in?

    courses = Course.published.ordered.includes(:course_lessons).to_a
    featured = Course::FEATURED_SLUGS.filter_map { |s| courses.find { |c| c.slug == s } }
    @courses = featured + (courses - featured)   # featured first, in the chosen order
    @categories = Course.category_counts(@courses)
    @blog_posts = BlogPost.all.first(4)   # newest four; the rest are on /blog
  end
end
