class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :credit_card_number
      t.boolean :is_buyer
      t.boolean :is_seller

      t.timestamps
    end
  end
end