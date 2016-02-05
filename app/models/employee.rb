class Employee < ActiveRecord::Base
	validates :employee_id, presence: true
	validates :name, presence: true
	validates :gender, presence: true
	validates :birthdate, presence: true
end




# CSV.open("path/to/file.csv", "wb") do |csv|
#   csv << ["row", "of", "CSV", "data"]
#   csv << ["another", "row"]
#   # ...
# end