class MainMenuItem < ActiveRecord::Base
  attr_accessible :name, :title, :parent_id, :link, :page_id, :parent, :child_items, :child_item_ids, :display_index

  #belongs_to :parent, :class_name => "MainMenuItem"
  #has_many :main_menu, :foreign_key => "parent_id"

  has_many :child_items, class_name: "MainMenuItem",
           foreign_key: "parent_id"

  #accepts_nested_attributes_for :child_items #, :allow_destroy => true
  #attr_accessible :child_items_attributes #, :allow_destroy => true

  belongs_to :parent, class_name: "MainMenuItem"

  before_save :check_url

  def check_url
    if self.link.length == 0 && self.page != nil
      self.link = self.page.route
    end
  end

  has_one :page
  #belongs_to :page

  attr_accessible :page

  rails_admin do
    edit do
      field :name
      field :title
      field :parent
      field :page
      field :link
      field :display_index
      field :child_items
    end
  end
end
