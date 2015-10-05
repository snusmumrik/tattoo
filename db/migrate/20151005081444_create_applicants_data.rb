class CreateApplicantsData < ActiveRecord::Migration
  def change
    create_table :applicants_data do |t|
      t.references :applicant, index: true, foreign_key: true
      t.references :datum, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
