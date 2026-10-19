# /sitemap.xml: the public pages Google should read. Lessons, the dashboard and admin need a login, so they are left out.
class SitemapsController < ApplicationController
  def show
    @urls = [root_path, pricing_path, ask_path, blogs_path, about_path, contact_path,
             privacy_path, terms_path, refund_policy_path, delivery_policy_path]
    @posts = BlogPost.all
    expires_in 6.hours, public: true
    respond_to { |f| f.xml }
  end
end
