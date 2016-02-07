class Grade < ActiveRecord::Base
	belongs_to :user
	belongs_to :school
	has_many :students
	
end


