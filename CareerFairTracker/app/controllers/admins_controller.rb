class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def index
    @admins = Admin.all
  end

  def show
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    @user = User.find(session[:user_id])
    @admin = Admin.new(admin_params)
    @admin.user = @user
    @admin.user_id = @user.id
    if not @admin.save!
      redirect_to root_url and return
    end
    session[:user_id_for_their_type] = @admin.id
    redirect_to admin_dashboard_path and return
  end

  def dashboard
    if session[:user_id] == nil 
      redirect_to root_url and return
    end
    @events = Event.all
    @user = User.find(session[:user_id])
    @user_tag = @user[:username]
    @admin = Admin.find_by user_id: @user.id
    @user_type = @user[:user_type]
    @welcome_message = "Welcome #{@user_tag}"
  end

  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # only allow specific params from user
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email)
    end
end
