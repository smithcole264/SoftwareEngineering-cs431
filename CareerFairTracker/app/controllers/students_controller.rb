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
        #Conditional can definitely be shortened
        #Some Failed attempts:
            #if student_params[:all] != ""
            #if student_params[:all].present?
            #if student_params[:first_name, :last_name] != ""
            #if student_params[:first_name, :last_name].present?
        if student_params[:first_name] != "" &&
        student_params[:last_name] != "" &&
        student_params[:major] != "" &&
        student_params[:expected_grad_month] != "" &&
        student_params[:expected_grad_year] != ""
            @student = Student.create!(student_params)
        end
        #This flash statement doesn't appear to do anything
        flash[:notice] = "student was attempted to be added"
        redirect_to students_path
    end

    def update
    end

    def destroy
    end
end
