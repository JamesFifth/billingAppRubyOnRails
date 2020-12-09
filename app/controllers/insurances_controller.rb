
class InsurancesController < ApplicationController
  
  before_action :set_insurance, only: [:show, :edit, :update, :destroy]

  def index
    if params[:ssn]
      @ssn = params[:ssn]
      @patient = Patient.find_by(ssn: @ssn)
      @insurance = Insurance.find_by(insured_ssn: @ssn)
      render 'compare'
    elsif params[:insurId]
      @insurId = params[:insurId]
      @patient = Patient.find_by(insurId: @insurId)
      @insurance = Insurance.find_by(insurance_id: @insurId)
      render "compare"
    else
      @insurances = Insurance.all.order('insurance_id')
      # by filter_ssn
      if params[:filter_ssn]
        @search_item = params[:filter_ssn]
        @insurances = @insurances.filter_by_ssn(@search_item)
      end
      # by filter_insurance_id
      if params[:filter_insurance_id]
        @search_item = params[:filter_insurance_id]
        @insurances = @insurances.filter_by_insurance_id(@search_item)
      end
    end
  end

  def check
  end

  def show
  end

  def new
    @insurance = Insurance.new
  end

  def edit
  end

  def create
    @insurance = Insurance.new(insurance_params)

    respond_to do |format|
      if @insurance.save
        format.html { redirect_to @insurance, notice: 'Insurance was successfully created.' }
        format.json { render :show, status: :created, location: @insurance }
      else
        format.html { render :new }
        format.json { render json: @insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @insurance.update(insurance_params)
        format.html { redirect_to @insurance, notice: 'Insurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurance }
      else
        format.html { render :edit }
        format.json { render json: @insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @insurance.destroy
    respond_to do |format|
      format.html { redirect_to insurances_url, notice: 'Insurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_insurance
      @insurance = Insurance.find(params[:id])
    end
    def insurance_params
      params.require(:insurance).permit(:insurance_id, :insured_name, :insured_birth, :insured_ssn, :insurance_start_date, :insurance_end_date, :insurance_limitation, :insurance_deductible, :insurance_copay_rate, :insurance_company_name, :insurance_company_address, :insurance_company_phone, :insurance_company_email, :insurance_company_website)
    end
end
