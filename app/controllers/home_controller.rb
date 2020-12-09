class HomeController < ApplicationController
  def index
  end
  def welcome
    render :layout => false
  end

  def superbill
    id_of_bill = params[:bill_id]
    @bill = Bill.find_by(id: id_of_bill)
    id_of_insurance = @bill.insurrance_id
    id_of_patient = @bill.patient_id
    @patient = Patient.find_by(id: id_of_patient)
    @insurance = Insurance.find_by(insurance_id: id_of_insurance)
    @provider = Provider.find_by(NPI: 2121212132)
    render 'superbill'
  end

  def search
    
  end

end
