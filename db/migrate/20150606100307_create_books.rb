class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :image
      t.string :name
      t.string :author
      t.integer :price
      t.string :publisher
      t.date :date_of_publication
      t.string :ISBN_code
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
