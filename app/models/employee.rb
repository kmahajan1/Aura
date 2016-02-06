class Employee < ActiveRecord::Base
	#Validates Employee Basic Information
	validates :employee_id, presence: true
	validates :name, presence: true
	validates :gender, presence: true
	validates :birthdate, format: { with: /(?<month>\d{1,2})\/(?<day>\d{1,2})\/(?<year>\d{4})/,
		message: "format: xx/xx/xxxx" }

	#Validates Employee Address Information
	validates :address1, presence: true
	validates :address2, length: { minimum: 2 }, allow_blank: true
	validates :city, presence: true
	validates :state, length: { minimum: 2 }
	validates :postal, length: { minimum: 5 }

	#Validates Phone Information
	validates :phone_type, presence: true
	validates :phone_number, format: { with: /\A(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?\z/ }

end



#LINE 6 AND 18, HOW TO FORMAT ANY INPUT INTO XX/XX/XXXX AND (XXX) XXX-XXXX FORMAT?
#SHOULD PHONE_NUMBER BE A STRING?
#SET ADDRESS2 TO BE OKAY WITH HAVING A BLANK INPUT.


#HERE IS THE FORMAT FOR SAVING TO .CSV, BUT HOW TO APPLY IT I FORGET.
# CSV.open("path/to/file.csv", "wb") do |csv|
#   csv << ["row", "of", "CSV", "data"]
#   csv << ["another", "row"]
#   # ...
# end

# ONLY NEED THESE FIELDS OUTPUTTED TO .CSV:
# -EMPLOYEE ID
# -NAME
# -GENDER
# -CITY
# -PHONE TYPE
# -PHONE NUMBER