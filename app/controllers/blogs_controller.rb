# Public blog: step-by-step articles rendered from Markdown files in blog-posts/.
class BlogsController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:slug])
    @other_posts = BlogPost.all.reject { |p| p.slug == @post.slug }.first(3)
  end

  def image
    post = BlogPost.find(params[:slug])
    file = post.image_file(params[:name]) or raise ActiveRecord::RecordNotFound
    expires_in 1.day, public: true
    # Our own SVG covers: served with a strict policy so an SVG can never run script.
    response.headers["Content-Security-Policy"] = "default-src 'none'; style-src 'unsafe-inline'" if file.extname == ".svg"
    send_file file, disposition: "inline"
  end
end
