class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer   :employee_id
      t.string   :name
      t.string  :gender
      t.string :birthdate

      t.timestamps(null: false)
    end
  end
end
