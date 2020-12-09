class Bill < ApplicationRecord
    belongs_to :patient, optional: true
    def self.search_bill(search_term)
        # where("LOWER(cpt_description) LIKE :search_term", search_term: "%#{search_term.downcase}%")
where("LOWER(diagnosis_code) LIKE :search_term OR LOWER(insurrance_id) LIKE :search_term OR LOWER(patient_id) LIKE :search_term OR LOWER(bill_date) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end
