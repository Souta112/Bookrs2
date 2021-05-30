class RenameBobyColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :boby, :body
  end
end
