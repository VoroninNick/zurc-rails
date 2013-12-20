class AddDisplayIndexToMainMenuItems < ActiveRecord::Migration
  def change
    add_column :main_menu_items, :display_index, :integer
  end
end
