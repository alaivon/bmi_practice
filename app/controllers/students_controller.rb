class StudentsController < ApplicationController

	before_action :find_school
	before_action :find_grade
	before_action :find_student, except: [:new, :create]

	def show
		
	end

	def new
		@student = @grade.student.new
	end

	def create
		@student = @grade.student.build(student_params)
		if @student.save
			flash[:success] = "Congratulation! New member in your class."
			redirect_to school_grade_path(@school, @grade)
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @student.update(student_params)
			flash[:success] = "Updated class member successfully."
			redirect_to school_grade_path(@school, @grade)
		else
			render :edit
		end
	end

	def destroy
		
	end

private
	def find_school
		@school = School.find(params[:school_id])	
	end

	def find_grade
		@grade = @school.grades.find(params[:grade_id])
	end

	def find_student
		@student = @grade.students.find(params[:id])
	end

	def student_params
		params.require(:student).permit(:number, :name, :birth,
																		:height, :weight, :bmi,
																		:gender)
	end

end
