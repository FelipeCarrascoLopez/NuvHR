class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :department, null: false, foreign_key: true
      t.references :job_position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
