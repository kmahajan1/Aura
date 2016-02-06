# Code to populate the database ...

kunal_details = { :employee_id    => 1,
                  :name => "Kunal",
                  :gender     => "male",
                  :birthdate  => "07/09/1983",
                  :address1 => "123 New St",
                  :address2 => "",
                  :city => "Evanston",
                  :state => "IL",
                  :postal => 60201,
                  :phone_type => "cell",
                  :phone_number => "6309730594" }


kunal = Employee.new(kunal_details)
kunal.save
