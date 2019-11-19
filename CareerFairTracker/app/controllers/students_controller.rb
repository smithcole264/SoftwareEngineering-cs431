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
        @user = User.find(session[:user_id])
        @student = Student.new(student_params)
        @student.user = @user
        session[:user_id_for_their_type] = @student.id
    
        respond_to do |format|
            if @student.save
                format.html { redirect_to @student, notice: 'Recruiter was successfully created.' }
                format.json { render :show, status: :created, location: @student }
            else
                format.html { render :new }
                format.json { render json: @student.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
    end

    def destroy
    end
end
