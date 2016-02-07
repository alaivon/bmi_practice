class School < ActiveRecord::Base
	has_many :grades
	belongs_to :city
	belongs_to :distance
	validates_presence_of :name, :distance_id, :city_id

	def self.search(school)
		if school
			where(["name LIKE ?", "%#{school}%"])
		else
			all
		end
	end


end
