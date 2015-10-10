class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :author

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
