class Page < ActiveRecord::Base
  belongs_to :main_menu_item
  attr_accessible :main_menu_item

  attr_accessible :name
  attr_accessible :head_title
  attr_accessible :body_title
  attr_accessible :breadcrumbs
  attr_accessible :route
  attr_accessible :meta_keywords
  attr_accessible :meta_description
  attr_accessible :meta_tags
  attr_accessible :content


end
