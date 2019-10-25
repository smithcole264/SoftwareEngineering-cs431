class StudentsController < ApplicationController
    # def student_params
    #     params.require(:student).permit(:fn, :ln)
    # end

    def index
        @students = Student.all 
    end

    def create
        @student = Student.create!(first_name: params[:fn], last_name: params[:ln])
        flash[:notice] = "student was attempted to be added"
        redirect_to student_index_path
    end
end
