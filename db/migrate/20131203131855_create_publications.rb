class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.string :title
      t.has_attached_file :avatar
      t.boolean :display_avatar_on_content_page
      t.text :short_description
      t.text :intro
      t.text :content
      t.string :author
      t.datetime :release_date
      t.boolean :publish
      t.has_attached_file :doc_file
      t.has_attached_file :pdf_file

      t.timestamps
    end
  end
end
