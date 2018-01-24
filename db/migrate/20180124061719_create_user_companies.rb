class CreateUserCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_companies do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.belongs_to :company
      t.belongs_to :user
      t.string :company_url
      t.string :location
      t.timestamps
      t.text :other_details
    end
  end
end
