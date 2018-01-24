class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.belongs_to :user
      t.string :collage_url
      t.string :collage_location
      t.string :collage_name
      t.string :stream
      t.string :university
      t.text :other_details
      t.timestamps
    end
  end
end
