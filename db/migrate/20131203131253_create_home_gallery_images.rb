class CreateHomeGalleryImages < ActiveRecord::Migration
  def change
    create_table :home_gallery_images do |t|
      t.string :name
      t.has_attached_file :image
      t.string :alt_text

      t.timestamps
    end
  end
end
