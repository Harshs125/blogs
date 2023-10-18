class Renamecolumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :Articles, :title , :article_title
  end
end
