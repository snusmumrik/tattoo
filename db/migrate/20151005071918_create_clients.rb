class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :url
      t.string :address
      t.string :tel
      t.string :banner_url
      t.string :email
      t.integer :commition
      t.string :condition

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
