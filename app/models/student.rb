class Student < ActiveRecord::Base
	belongs_to :grade
	validates_presence_of :number, :height, :weight
	validates_numericality_of :height, :weight, :numericality =>{greater_than: 0 }
	validates :number, presence: true, length: {maximum: 8}, numericality: true
	validates :name, presence: true, length: {maximum: 50}, format: {:with => /\A[a-z+ .]+\z/i }



end	
