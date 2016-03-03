class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.references :author, null: false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
