class Heatsheet < ApplicationRecord


	def self.to_csv
	CSV.generate do |csv|
	csv << column_names
			
			all.each do |heatsheet|
			csv << heatsheet.attributes.values_at(*column_names)
			end
		end
end
end