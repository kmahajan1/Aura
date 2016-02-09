##Aura-Interview:

This is an interview assignment to create a database where a client can store an employee's information. (1) table coorelating to Employee Basic Information that has fields: Employee ID, Name, Gender, Birthdate; (1) table coorelating to Employee Address that has fields: Address1, Address2, City, State, Postal; and (1) table coorelating to Employee Phone Information that has fields: Phone Type (cell, work, fax), and Phone Number.

The second portion of this assignment is to be able to create a 'program' to output all of the information from the database, into a single .CSV file. The following items should be displayed:

-EMPLOYEE ID
-NAME
-GENDER
-CITY
-PHONE TYPE
-PHONE NUMBER

##Testing:
To test my code, some pre-requisites need to be established and steps necessary.
1.) Use of a Mac.
2.) Have Ruby installed.
3.) Ensure necessary gems are installed, verify by (terminal>navigate to this folder directory>type: bundle install).
3.) Type the following commands in terminal (assuming you're in the correct 'Aura' directory):
	be rake db:create			#creates database
	be rake db:migrate			#creates database tables
	be rake db:seed				#populates database tables with seed information
	be rake console				#starts the console
		Employee.create_csv     #this will create the CSV file, outputting the assignment's required fields.

