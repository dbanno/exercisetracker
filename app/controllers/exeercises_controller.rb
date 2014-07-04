class ExeercisesController < ApplicationController
  before_action :set_exeercise, only: [:show, :edit, :update, :destroy]

  # GET /exeercises
  # GET /exeercises.json
  def index
    @exeercises = Exeercise.all
  end

  # GET /exeercises/1
  # GET /exeercises/1.json
  def show
  end

  # GET /exeercises/new
  def new
    @exeercise = Exeercise.new
  end

  # GET /exeercises/1/edit
  def edit
  end

  # POST /exeercises
  # POST /exeercises.json
  def create
    @exeercise = Exeercise.new(exeercise_params)

    respond_to do |format|
      if @exeercise.save
        format.html { redirect_to @exeercise, notice: 'Exeercise was successfully created.' }
        format.json { render :show, status: :created, location: @exeercise }
      else
        format.html { render :new }
        format.json { render json: @exeercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exeercises/1
  # PATCH/PUT /exeercises/1.json
  def update
    respond_to do |format|
      if @exeercise.update(exeercise_params)
        format.html { redirect_to @exeercise, notice: 'Exeercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @exeercise }
      else
        format.html { render :edit }
        format.json { render json: @exeercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exeercises/1
  # DELETE /exeercises/1.json
  def destroy
    @exeercise.destroy
    respond_to do |format|
      format.html { redirect_to exeercises_url, notice: 'Exeercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exeercise
      @exeercise = Exeercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exeercise_params
      params.require(:exeercise).permit(:name)
    end
end
