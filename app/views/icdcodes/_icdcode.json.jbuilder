json.extract! icdcode, :id, :category_code, :diagnosis_code, :FULL_CODE, :abbreviated_description, :full_description, :category_title, :created_at, :updated_at
json.url icdcode_url(icdcode, format: :json)
