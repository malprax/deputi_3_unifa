class ScholarshipSuccessesController < ApplicationController
  before_action :set_scholarship_success, only: [:show, :edit, :update, :destroy]

  # GET /scholarship_successes
  # GET /scholarship_successes.json
  def index
    @scholarship_successes = ScholarshipSuccess.all
  end

  # GET /scholarship_successes/1
  # GET /scholarship_successes/1.json
  def show
  end

  # GET /scholarship_successes/new
  def new
    @scholarship_success = ScholarshipSuccess.new
  end

  # GET /scholarship_successes/1/edit
  def edit
  end

  # POST /scholarship_successes
  # POST /scholarship_successes.json
  def create
    @scholarship_success = ScholarshipSuccess.new(scholarship_success_params)

    respond_to do |format|
      if @scholarship_success.save
        format.html { redirect_to @scholarship_success, notice: 'Scholarship success was successfully created.' }
        format.json { render :show, status: :created, location: @scholarship_success }
      else
        format.html { render :new }
        format.json { render json: @scholarship_success.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scholarship_successes/1
  # PATCH/PUT /scholarship_successes/1.json
  def update
    respond_to do |format|
      if @scholarship_success.update(scholarship_success_params)
        format.html { redirect_to @scholarship_success, notice: 'Scholarship success was successfully updated.' }
        format.json { render :show, status: :ok, location: @scholarship_success }
      else
        format.html { render :edit }
        format.json { render json: @scholarship_success.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarship_successes/1
  # DELETE /scholarship_successes/1.json
  def destroy
    @scholarship_success.destroy
    respond_to do |format|
      format.html { redirect_to scholarship_successes_url, notice: 'Scholarship success was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholarship_success
      @scholarship_success = ScholarshipSuccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scholarship_success_params
      params.require(:scholarship_success).permit(:name, :address, :date_of_birth, :religion)
    end
end
