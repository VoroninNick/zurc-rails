class CreateHomeBanners < ActiveRecord::Migration
  def change
    create_table :home_banners do |t|
      t.string :name
      t.string :title
      t.text :description
      t.has_attached_file :image
      t.string :effect

      t.timestamps
    end
  end
end
