class School < ActiveRecord::Base
	has_many :grades
	belongs_to :city
	belongs_to :distance
	validates :city_id, presence: true
	validates :name, presence: true
	validates :distance_id, presence: true

end
