class CreateUserAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_addresses do |t|
      t.string :first_line
      t.string :second_line
      t.string :area
      t.string :landmark
      t.string :city
      t.string :country
      t.boolean :is_current
      t.boolean :is_permanent
      t.belongs_to :user
      t.integer :pincode
      t.text :other_details
      t.timestamps
    end
  end
end
