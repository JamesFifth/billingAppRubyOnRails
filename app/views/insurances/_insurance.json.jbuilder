json.extract! insurance, :id, :insurance_id, :insured_name, :insured_birth, :insured_ssn, :insurance_start_date, :insurance_end_date, :insurance_limitation, :insurance_deductible, :insurance_copay_rate, :insurance_company_name, :insurance_company_address, :insurance_company_phone, :insurance_company_email, :insurance_company_website, :created_at, :updated_at
json.url insurance_url(insurance, format: :json)