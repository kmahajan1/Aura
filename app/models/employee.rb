require 'csv'

class Employee < ActiveRecord::Base
	#Validates Employee Basic Information
	validates :employee_id, presence: true, uniqueness: true
	validates :name, presence: true
	validates :gender, presence: true
	validates :birthdate, presence: true
	#Validates Employee Address Information
	validates :address1, presence: true
	validates :address2, length: { in: 1..20 }, allow_blank: true
	validates :city, presence: true
	validates :state, length: { is: 2 }
	validates :postal, length: { minimum: 5 }

	#Validates Phone Information
	validates :phone_type, inclusion: ['cell', 'work', 'fax']
	validates :phone_number, format: { with: /\A(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?\z/ }


	def csv_data
		# ["#{self.employee_id}", "#{self.name}", "#{self.gender}", "#{self.city}", "#{self.phone_type}", "#{self.phone_number}"]
		[self.employee_id, self.name, self.gender, self.city, self.phone_type, self.phone_number]
	end

	def self.create_csv
		# CSV.open("Aura.csv", "wb") do |csv|
		#   csv << "employee_id, name, gender, city, phone_type, phone_number"
		#   Employee.id do |employee|
		#     csv << ["employee_id", "name", "gender", "city", "phone_type", "phone_number"]
		#   end
		# end
		# a = ["paulo", "kunal"]
		CSV.open("file.csv", "wb") do |csv|
			csv << ["employee_id", "name", "gender", "city", "phone_type", "phone_number"] #header of the first column
			Employee.all.each do |employee|
				csv << employee.csv_data #populates each 'row' of the column with 'paulo/kunal'
			end
		end

		# CSV.open("Aura.csv", "wb") do |csv|
		#   csv << ["name"]
		#   # a.each do |employee|
		#   csv << "kunal"
		#   # end
		# end
	end


end

# \A(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]|(?:Jan|Mar|May|Jul|Aug|Oct|Dec)))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2]|(?:Jan|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec))\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)(?:0?2|(?:Feb))\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9]|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep))|(?:1[0-2]|(?:Oct|Nov|Dec)))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})\z

#LINE 6 AND 18, HOW TO FORMAT ANY INPUT INTO XX/XX/XXXX AND (XXX) XXX-XXXX FORMAT FOR WHEN EXPORTED TO .CSV?
#SHOULD PHONE_NUMBER BE A STRING?
#SET ADDRESS2 TO BE OKAY WITH HAVING A BLANK INPUT.


# HERE IS THE FORMAT FOR SAVING TO .CSV, BUT HOW TO APPLY IT VIA RUBY/ACTIVERECORD, I AM UNABLE TO FIND.