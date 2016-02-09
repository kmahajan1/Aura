# Code to populate the database ...

kunal_details = { :employee_id    => 1,
                  :name => "Kunal Mahajan",
                  :gender     => "male",
                  :birthdate  => "07/09/1983",
                  :address1 => "123 New St",
                  :city => "Evanston",
                  :state => "IL",
                  :postal => 60201,
                  :phone_type => "cell",
                  :phone_number => "6309730594" }


kunal = Employee.new(kunal_details)
kunal.save


vaishali_details = { :employee_id    => 2,
                  :name => "Vaishali Mahajan",
                  :gender     => "female",
                  :birthdate  => "01/24/1983",
                  :address1 => "123 New St",
                  :address2 => "Apt. #608",
                  :city => "Evanston",
                  :state => "IL",
                  :postal => 60201,
                  :phone_type => "cell",
                  :phone_number => "224-227-3210" }


vaishali = Employee.new(vaishali_details)
vaishali.save