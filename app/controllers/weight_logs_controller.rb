class WeightLogsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy
  before_action :set_weight_log, only: [:show, :edit, :update, :destroy]
  # GET /weight_logs
  # GET /weight_logs.json
  def index
	set_exercise
    @weight_logs = @exercise.weight_logs.paginate(page: params[:page])
  end

  # GET /weight_logs/1
  # GET /weight_logs/1.json
  def show
  end

  # GET /weight_logs/new
  def new
	set_exercise
    @weight_log = @exercise.weight_logs.new
  end

  # GET /weight_logs/1/edit
  def edit
  end

  # POST /weight_logs
  # POST /weight_logs.json
  def create
	set_exercise
    @weight_log = @exercise.weight_logs.build(weight_log_params)

    respond_to do |format|
      if @weight_log.save
        format.html { redirect_to exercise_weight_logs_path, notice: 'Exercise log was successfully created.' }
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
	@exercise = @weight_log.exercise_id
    respond_to do |format|
      if @weight_log.update(weight_log_params)
        format.html { redirect_to exercise_weight_logs_path(@exercise), notice: 'Weight log was successfully updated.' }
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
	
	set_weight_log
	@exercise = @weight_log.exercise_id
    @weight_log.destroy
    respond_to do |format|
      format.html { redirect_to exercise_weight_logs_path(@exercise), notice: 'Weight log was successfully destroyed.' }
      format.json { head :no_content }
	  
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_log
      @weight_log = WeightLog.find(params[:id])
    end
	def set_exercise
		@exercise = Exercise.find(params[:exercise_id])
	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_log_params
      params.require(:weight_log).permit(:weight, :reps)
    end
	
	 def correct_user
		@weight_log = WeightLog.find_by(id: params[:id])
      redirect_to root_url if @weight_log.nil?
    end
end
