class ScholarshipRegistrationsController < ApplicationController
  before_action :set_scholarship_registration, only: [:show, :edit, :update, :destroy]

  # GET /scholarship_registrations
  # GET /scholarship_registrations.json
  def index
    @scholarship_registrations = ScholarshipRegistration.all
  end

  # GET /scholarship_registrations/1
  # GET /scholarship_registrations/1.json
  def show
  end

  # GET /scholarship_registrations/new
  def new
    @scholarship_registration = ScholarshipRegistration.new
  end

  # GET /scholarship_registrations/1/edit
  def edit
  end

  # POST /scholarship_registrations
  # POST /scholarship_registrations.json
  def create
    @scholarship_registration = ScholarshipRegistration.new(scholarship_registration_params)

    respond_to do |format|
      if @scholarship_registration.save
        format.html { redirect_to @scholarship_registration, notice: 'Scholarship registration was successfully created.' }
        format.json { render :show, status: :created, location: @scholarship_registration }
      else
        format.html { render :new }
        format.json { render json: @scholarship_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scholarship_registrations/1
  # PATCH/PUT /scholarship_registrations/1.json
  def update
    respond_to do |format|
      if @scholarship_registration.update(scholarship_registration_params)
        format.html { redirect_to @scholarship_registration, notice: 'Scholarship registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @scholarship_registration }
      else
        format.html { render :edit }
        format.json { render json: @scholarship_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarship_registrations/1
  # DELETE /scholarship_registrations/1.json
  def destroy
    @scholarship_registration.destroy
    respond_to do |format|
      format.html { redirect_to scholarship_registrations_url, notice: 'Scholarship registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholarship_registration
      @scholarship_registration = ScholarshipRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scholarship_registration_params
      params.require(:scholarship_registration).permit(:name, :address, :date_of_birth, :religion)
    end
end
