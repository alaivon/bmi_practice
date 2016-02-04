class School < ActiveRecord::Base
	has_many :grades
	belongs_to :city
	belongs_to :distance
end
