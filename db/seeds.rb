# Code to populate the database ...

kunal_details = { :employee_id    => 1,
                  :name => "Kunal",
                  :gender     => "male",
                  :birthdate  => "07091983" }


kunal = Employee.new(kunal_details)
kunal.save
