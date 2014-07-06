class WeightLogsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  # GET /weight_logs
  # GET /weight_logs.json
  def index
    @weight_logs = WeightLog.where("user_id = ?", current_user)
  end

  # GET /weight_logs/1
  # GET /weight_logs/1.json
  def show
  end

  # GET /weight_logs/new
  def new
    @weight_log = WeightLog.new
  end

  # GET /weight_logs/1/edit
  def edit
  end

  # POST /weight_logs
  # POST /weight_logs.json
  def create
    @weight_log = current_user.weight_logs.build(weight_log_params)

    respond_to do |format|
      if @weight_log.save
        format.html { redirect_to weight_logs_path, notice: 'Exercise log was successfully created.' }
        format.json { render :index, status: :created, location: @weight_log }
      else
        format.html { render :new }
        format.json { render json: @weight_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_logs/1
  # PATCH/PUT /weight_logs/1.json
  def update
    respond_to do |format|
      if @weight_log.update(weight_log_params)
        format.html { redirect_to @weight_log, notice: 'Weight log was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_log }
      else
        format.html { render :edit }
        format.json { render json: @weight_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_logs/1
  # DELETE /weight_logs/1.json
  def destroy
    @weight_log.destroy
    respond_to do |format|
      format.html { redirect_to weight_logs_url, notice: 'Weight log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_log
      @weight_log = Users.WeightLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_log_params
      params.require(:weight_log).permit(:weight, :reps)
    end
	
	 def correct_user
		@weight_log = current_user.weight_logs.find_by(id: params[:id])
      redirect_to root_url if @weight_log.nil?
    end
end
