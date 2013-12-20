class AddMainMenuItemIdToPages < ActiveRecord::Migration
  def change

    remove_column :main_menu_items, :page_id, :integer

    add_column :pages, :main_menu_item_id, :integer
    add_index :pages, :main_menu_item_id

    add_column :main_menu_items, :page_id, :integer
    add_index :main_menu_items, :page_id
    #change_table :pages do | t |
    #  t.belongs_to :main_menu_item
    #end


  end
end
