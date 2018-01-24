class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.belongs_to :user_company
      t.belongs_to :user
      t.string :project_url
      t.string :client
      t.string :location
      t.text :other_details
      
      t.timestamps
    end
  end
end
