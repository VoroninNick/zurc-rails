class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :head_title
      t.string :body_title
      t.text :breadcrumbs
      t.string :route
      t.text :metadata

      t.timestamps
    end
  end
end
