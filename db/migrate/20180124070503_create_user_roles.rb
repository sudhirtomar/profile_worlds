class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
