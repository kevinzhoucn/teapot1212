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
  def contact
    @contact_address = SiteConfig.contact_address
    @contact_phone = SiteConfig.contact_phone
    @contact_email = SiteConfig.contact_email
    @contact_qq = SiteConfig.contact_qq
    @contact_webchat = SiteConfig.contact_webchat
  end
end
