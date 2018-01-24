class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.belongs_to :user
      t.boolean :is_active
      t.timestamps
    end
  end
end
