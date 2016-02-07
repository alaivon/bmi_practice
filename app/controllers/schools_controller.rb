class SchoolsController < AdminController

	before_action :find_school, only: [:edit, :update, :show, :destroy]

	def index
		if params[:city].blank?
			@schools = School.all.order("created_on DESC")
		else
			@city_id = City.find_by(name: params[:city]).id
			@schools = School.where(city_id: @city_id).order("created_on DESC")
		end
	end

	def new
		@school = School.new
	end

	def create
		@school = School.new(school_params)
		if @school.save
			flash[:success] = "Added New School Successfully."
			redirect_to @school
		else
			render :new
		end
	end

	def show
		@grades = @school.grades
	end

	def edit
		
	end

	def update
		if @school.update(school_params)
			flash[:success] = "Update School Successfully."
			redirect_to @school
		else
			render :edit
		end
	end

	def destroy
		
	end

	private

	def find_school
		@school = School.find(params[:id])
	end

	def school_params
		params.require(:school).permit(:name, :city_id, :distance_id)
	end

end
