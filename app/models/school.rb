class School < ActiveRecord::Base
	has_many :grades
	belongs_to :city
	belongs_to :distance
	validates_presence_of :name, :distance_id, :city_id
	validates :name, format: {:with => /^[a-z+ .]+$/i }
end
