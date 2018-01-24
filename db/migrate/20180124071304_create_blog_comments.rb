class CreateBlogComments < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_comments do |t|
      t.belongs_to :blog
      t.timestamps
    end
  end
end
