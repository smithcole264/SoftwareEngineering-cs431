class StudentsController < ApplicationController
    def student_params
        params.require(:student).permit(:first_name, :last_name, :major, :expected_grad_month, :expected_grad_year)
    end

    def index
        @students = Student.all 
    end

    def show
    end

    def new 
    end

    def edit
    end

    def create
        @student = Student.create!(student_params)
        flash[:notice] = "student was attempted to be added"
        redirect_to students_path
    end

    def update
    end

    def destroy
    end
end
