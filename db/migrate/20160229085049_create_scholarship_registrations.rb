class CreateScholarshipRegistrations < ActiveRecord::Migration
  def change
    create_table :scholarship_registrations do |t|
      t.string :name
      t.string :address
      t.string :date_of_birth
      t.string :religion

      t.timestamps null: false
    end
  end
end
