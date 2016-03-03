class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :article, null: false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
