class Patient < ApplicationRecord
    has_many :bills
    def self.search_by_ssn(search_term)
        where("LOWER(ssn) LIKE :search_term OR LOWER(insurId) LIKE :search_term OR LOWER(fname) LIKE :search_term OR LOWER(lname) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.search_by_insuranceID(search_term)
        where("LOWER(ssn) LIKE :search_term OR LOWER(insurId) LIKE :search_term OR LOWER(fname) LIKE :search_term OR LOWER(lname) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end
