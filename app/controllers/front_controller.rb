class FrontController < ApplicationController
  def index
    @slides = Slide.all
  end
  def about
    @about_title = SiteConfig.about_title
    @about_html = SiteConfig.about_content_html
    @about_image_url = SiteConfig.about_image_url
  end
  def news
    @news = News.all
  end
  def join
  end
end
