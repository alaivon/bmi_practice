class GradesController < AdminController
	before_action :find_school
	before_action :find_grade, except: [:new, :create]


	def show
		@students = @grade.students
	end

	def new
		@grade = @school.grades.new
	end

	def create
		@grade = @school.grades.build(grade_params)
		if @grade.save
			@grade.update(user_id: current_user.id)
			flash[:success] = "Created a new grade successfully."
			redirect_to school_grade_path(@school, @grade)
		else
			render :new
		end

	end

	def edit
		
	end

	def update
		if @grade.update(grade_params)
			flash[:success] = "Updated your grade successfully."
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
		@grade = @school.grades.find(params[:id])
	end

	def grade_params
		params.require(:grade).permit(:name, :user_id, :school_id)
	end




end
