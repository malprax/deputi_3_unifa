class CreateAlumnus < ActiveRecord::Migration
  def change
    create_table :alumnus do |t|
      t.string :name
      t.string :address
      t.string :date_of_birth
      t.string :place_of_birth
      t.string :religion
      t.string :gender
      t.string :faculty
      t.string :sub_faculty

      t.timestamps null: false
    end
  end
end
