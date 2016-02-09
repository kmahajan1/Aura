##Aura-Interview Assignment(s):
######Due By: 02/09/16 @ 6:00pm######


Part 1: Create a database where a client can store an employee's information. Fields it should include:

	*Employee ID
	*Name
	*Gender
	*Birthdate
	*Address1
	*Address2
	*City
	*State
	*Postal
	*Phone Type (Cell/Work/Fax)
	*Phone Number

Part 2: Create a program to output all of the information from the aforementioned database, into a single .csv file. Fields it should include:

	*Employee ID
	*Name
	*Gender
	*City
	*Phone Type
	*Phone Number

##Testing Kunal's Code:

To test my code, some pre-requisites need to be established and steps necessary.

	1.) Use of a Mac.
	2.) Have Ruby installed.
	3.) Ensure necessary gems are installed (terminal>navigate to this 'Aura' directory>bundle install).
	3.) Type the following commands in terminal (assuming you're in the correct 'Aura' directory):
	*be rake db:create			#creates database
	*be rake db:migrate			#creates database tables
	*be rake db:seed			#populates database tables with seed information
	*be rake console			#starts the console
		Employee.create_csv     #this will create an 'Employees.csv' file in the current (Aura) directory, outputting the assignment's required fields.

