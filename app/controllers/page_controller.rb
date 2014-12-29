class PageController < ApplicationController
  def index
    @home_gallery_images = HomeGalleryImage.all
    @home_publications = Publication.where(:publish => true).order('release_date desc').limit(3)
    render layout: 'home'
  end

  def contact
  end

  def custom_page
  end

  def what_we_do
    @breadcrumbs = [
        { title: 'ЩО МИ РОБИМО' }
    ]
  end
end
