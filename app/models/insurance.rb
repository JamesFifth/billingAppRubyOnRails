class Insurance < ApplicationRecord
    belongs_to :patient, optional: true
    def self.filter_by_ssn(search_term)
        where("LOWER(insured_ssn) LIKE :search_term OR LOWER(insurance_id) LIKE :search_term OR LOWER(insured_name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.filter_by_insurance_id(search_term)
        where("LOWER(insured_ssn) LIKE :search_term OR LOWER(insurance_id) LIKE :search_term OR LOWER(insured_name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end

# LOWER(insured_ssn) LIKE :search_term OR LOWER(insurance_id) LIKE :search_term OR LOWER(insured_name) LIKE :search_term
