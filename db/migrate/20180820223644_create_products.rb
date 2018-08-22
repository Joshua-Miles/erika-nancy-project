class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.belongs_to :seller, foreign_key: true, index:true
      t.belongs_to :inventory, foreign_key: true, index:true
      t.float :price
      t.text :description
      

      t.timestamps
    end
  end
end
