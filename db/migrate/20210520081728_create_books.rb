class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :title
      t.text :boby

      t.timestamps
    end
  end
end
