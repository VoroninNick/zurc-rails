class CreateNewsEntries < ActiveRecord::Migration
  def change
    create_table :news_entries do |t|
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

      t.timestamps
    end
  end
end
