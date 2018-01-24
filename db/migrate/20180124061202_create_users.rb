class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.string :alternate_email
      t.string :contact_no
      t.string :alternate_contact
      t.date :dob
      t.string :linkedin_url
      t.string :twitter_url
      t.string :github_url
      t.string :facebook_url
      t.string :instagram_url
      t.string :web_page_url
      t.text :other_details
      t.boolean :is_active

      t.timestamps
    end
  end
end
