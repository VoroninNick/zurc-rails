class AddMainMenuItemIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :main_menu_item_id, :integer
  end
end
