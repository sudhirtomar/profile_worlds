class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :linkedin_url
      t.string :company_url
      t.string :twitter_url
      t.timestamps
    end
  end
end
