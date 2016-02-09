class CreateEmployees < ActiveRecord::Migration

  def change
    create_table :employees do |t|
     #Employee Basic Information
      t.integer   :employee_id
      t.string   :name
      t.string  :gender
      t.string :birthdate
      #Employee Address Information
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.integer :postal
      #Employee Phone Information
      t.string :phone_type
      t.string :phone_number

      t.timestamps(null: false)
    end
  end

end