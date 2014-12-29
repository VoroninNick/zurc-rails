class HomeGalleryImage < ActiveRecord::Base
  attr_accessible :name, :image, :alt_text
  has_attached_file :image, styles: {
      home_thumb: '175x100#'
  }
end
