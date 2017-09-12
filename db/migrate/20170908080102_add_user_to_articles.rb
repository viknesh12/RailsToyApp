class AddUserToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :user, :string
  end
end
