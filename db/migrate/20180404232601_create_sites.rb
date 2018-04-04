class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name,         null: false
      t.string :slug,         null: false
      t.string :access_count
      t.text :description
      t.string :code,         null: false

      t.timestamps
    end
  end
end
