class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :kana
      t.string :sex
      t.string :age
      t.string :tel
      t.string :email
      t.string :address

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
