class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
 # before_action :correct_user,   only: [:edit, :update]
  before_action :set_user, only: [:show]
  #before_action :admin_user,     only: :destroy
  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
	#@weight_logs = WeightLog.joins(exercise: :user).sum("weight")
  end
  
  private
		# Use callbacks to share common setup or constraints between actions.
		def set_user
		  @user = User.find(params[:id])
		end
  # GET /users/new
#  def new
#    @user = User.new
#  end
#
#  # GET /users/1/edit
#  def edit
#	set_user
#  end
#
#  # POST /users
#  # POST /users.json
#  def create
#    @user = User.new(user_params)
#
#    respond_to do |format|
#      if @user.save
#		sign_in @user
#        format.html { redirect_to @user, notice: 'Welcome to the Simple Exercise Tracker!' }
#        format.json { render :show, status: :created, location: @user }
#      else
#        format.html { render :new }
#        format.json { render json: @user.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#
#  # PATCH/PUT /users/1
#  # PATCH/PUT /users/1.json
#  def update
#	set_user
#    respond_to do |format|
#      if @user.update_attributes(user_params)
#        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
#        format.json { render :show, status: :ok, location: @user }
#      else
#        format.html { render :edit }
#        format.json { render json: @user.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /users/1
#  # DELETE /users/1.json
#  def destroy
#	set_user
#    @user.destroy
#    respond_to do |format|
#      format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
#      format.json { head :no_content }
#    end
#  end
#


    # Never trust parameters from the scary internet, only allow the white list through.
#   def user_params
#     params.require(:user).permit(:name, :email, :password, :password_confirmation)
#   end
	
	
#	def correct_user
#     @user = User.find(params[:id])
#     redirect_to(root_url) unless current_user?(@user)
#   end
#
#	def admin_user
#     redirect_to(root_url) unless current_user.admin?
#   end
end
