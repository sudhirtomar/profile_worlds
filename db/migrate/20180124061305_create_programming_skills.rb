class CreateProgrammingSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :programming_skills do |t|
      t.string :name
      t.integer :expert_level
      t.belongs_to :user
      t.belongs_to :project
      t.text :description
      t.timestamps
    end
  end
end
