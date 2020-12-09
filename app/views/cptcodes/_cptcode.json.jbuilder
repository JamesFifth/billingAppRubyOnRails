json.extract! cptcode, :id, :cpt_code, :cpt_description, :cpt_price, :created_at, :updated_at
json.url cptcode_url(cptcode, format: :json)
