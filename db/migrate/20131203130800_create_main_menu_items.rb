class CreateMainMenuItems < ActiveRecord::Migration
  def change
    create_table :main_menu_items do |t|
      t.string :name
      t.string :title
      t.integer :parent_id
      t.string :link
      t.integer :page_id

      t.timestamps
    end
  end
end
