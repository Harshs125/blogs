class AddCreatedByToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :created_by, :string
  end
end
