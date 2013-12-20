class Publication < ActiveRecord::Base

  attr_accessible :avatar

  has_attached_file :avatar, styles: {
      home_pub_thumb: '370x200#'
  }#,
  #url: '/system/publications/avatars/:id/:style/:filename',
  #path: '#{RAILS_ROOT}/system/publications/avatars/:id/:style/:filename'

  has_attached_file :doc_file
  has_attached_file :pdf_file
  validates_format_of :doc_file_file_name, :with => %r{\.(docx|doc)$}i, multiline: true
  validates_format_of :pdf_file_file_name, :with => %r{\.(pdf)$}i, multiline: true

  attr_accessible :name
  attr_accessible :title

  attr_accessible :display_avatar_on_content_page
  attr_accessible :short_description
  attr_accessible :intro
  attr_accessible :content
  attr_accessible :author
  attr_accessible :release_date
  attr_accessible :publish
  attr_accessible :doc_file
  attr_accessible :pdf_file

  rails_admin do
    edit do
      field :name
      field :title
      field :avatar
      field :display_avatar_on_content_page
      field :short_description
      field :intro
      field :content, :ck_editor do

      end
      field :author
      field :release_date
      field :publish
      field :doc_file
      field :pdf_file
    end
  end


end
