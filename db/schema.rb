ActiveRecord::Schema.define(version: 2020_12_09_153213) do

  create_table "bills", force: :cascade do |t|
    t.string "diagnosis_code"
    t.integer "total_price"
    
    t.boolean "is_paid"
    t.string "insurrance_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "patient_id"
    t.date "bill_date"
    t.string "cpt_code"
    t.index ["patient_id"], name: "index_bills_on_patient_id"
  end

  create_table "cptcodes", force: :cascade do |t|
    t.string "cpt_code"
    t.string "cpt_description"
    t.string "cpt_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "icdcodes", force: :cascade do |t|
    t.string "category_code"
    t.string "diagnosis_code"
    t.string "FULL_CODE"
    t.string "abbreviated_description"
    t.string "full_description"
    t.string "category_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string "insurance_id"
    t.string "insured_name"
    t.date "insured_birth"
    t.string "insured_ssn"
    t.date "insurance_start_date"
    t.date "insurance_end_date"
    t.integer "insurance_limitation"
    t.integer "insurance_deductible"
    t.float "insurance_copay_rate"
    t.string "insurance_company_name"
    t.string "insurance_company_address"
    t.string "insurance_company_phone"
    t.string "insurance_company_email"
    t.string "insurance_company_website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "gender"
    t.string "ssn"
    t.string "phone"
    t.string "email"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date_of_birth"
    t.string "insurId"
  end

  create_table "providers", force: :cascade do |t|
    t.string "provider_name"
    t.string "provider_email"
    t.string "tax_id"
    t.string "provider_licence"
    t.string "provider_address"
    t.integer "NPI"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "superbills", force: :cascade do |t|
    t.integer "superbill_id"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "patients", on_delete: :cascade
end
