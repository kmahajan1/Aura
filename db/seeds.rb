emp1_details = { :employee_id    => 1,
                  :name => "Bob",
                  :gender     => "Male",
                  :birthdate  => "07/09/1983",
                  :address1 => "123 New St",
                  :city => "Evanston",
                  :state => "IL",
                  :postal => 60201,
                  :phone_type => "Cell",
                  :phone_number => "(098) 765-4321" }

emp1 = Employee.new(emp1_details)
emp1.save


emp2_details = { :employee_id    => 2,
                  :name => "Bobbi",
                  :gender     => "Female",
                  :birthdate  => "01/24/1983",
                  :address1 => "123 New St",
                  :address2 => "Apt. #111",
                  :city => "Evanston",
                  :state => "IL",
                  :postal => 60201,
                  :phone_type => "Work",
                  :phone_number => "(123) 456-7890" }

emp2 = Employee.new(emp2_details)
emp2.save