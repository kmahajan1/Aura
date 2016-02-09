require 'csv'

class Employee < ActiveRecord::Base
	#Validates Employee Basic Information
	validates :employee_id, presence: true, uniqueness: true
	validates :name, presence: true
	validates :gender, presence: true
	validates :birthdate, presence: true
	# validates :birthdate, format: { with: /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]|(?:Jan|Mar|May|Jul|Aug|Oct|Dec)))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2]|(?:Jan|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec))\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)(?:0?2|(?:Feb))\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9]|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep))|(?:1[0-2]|(?:Oct|Nov|Dec)))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})\z/ }
	#Validates Employee Address Information
	validates :address1, presence: true
	validates :address2, length: { in: 1..20 }, allow_blank: true
	validates :city, presence: true
	validates :state, length: { is: 2 }
	validates :postal, length: { minimum: 5 }
	#Validates Phone Information
	validates :phone_type, inclusion: ['Cell', 'Work', 'Fax']
	validates :phone_number, presence: true
	# validates :phone_number, format: { with: /\A(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?\z/ }

	def csv_data
		[self.employee_id, self.name, self.gender, self.city, self.phone_type, self.phone_number]
	end

	def self.create_csv
		CSV.open("Employees.csv", "wb") do |csv|
			csv << ["Employee ID:", "Name:", "Gender:", "City:", "Phone Type:", "Phone Number:"]
			Employee.all.each do |employee|
				csv << employee.csv_data
			end
		end
	end

end

