class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :name

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
