json.extract! bill, :id, :bill_id, :bill_date, :patient_id, :diagnosis_code, :cpt_code, :total_price, :is_paid, :insurrance_id, :created_at, :updated_at
json.url bill_url(bill, format: :json)
