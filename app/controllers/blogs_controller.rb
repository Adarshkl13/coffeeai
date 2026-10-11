# Public blog: step-by-step articles rendered from Markdown files in blog-posts/.
class BlogsController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:slug])
    @other_posts = BlogPost.all.reject { |p| p.slug == @post.slug }
  end

  def image
    post = BlogPost.find(params[:slug])
    file = post.image_file(params[:name]) or raise ActiveRecord::RecordNotFound
    expires_in 1.day, public: true
    send_file file, disposition: "inline"
  end
end
