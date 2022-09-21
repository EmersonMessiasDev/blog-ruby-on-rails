class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: true
      t.references :author, null: false,  foreign_key: { to_table: :users }
      t.text :body

      t.timestamps
    end
  end
end
