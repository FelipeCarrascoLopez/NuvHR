class CreateJobPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :job_positions do |t|
      t.string :title
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
