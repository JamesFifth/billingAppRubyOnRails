json.extract! patient, :id, :fname, :lname, :gender, :date_of_birth, :ssn, :phone, :email, :address_line_1, :address_line_2, :city, :state, :zip, :created_at, :updated_at
json.url patient_url(patient, format: :json)
