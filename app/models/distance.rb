class Distance < ActiveRecord::Base
	 belongs_to :city
	 has_many :schools
end
