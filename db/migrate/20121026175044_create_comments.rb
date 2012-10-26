class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
