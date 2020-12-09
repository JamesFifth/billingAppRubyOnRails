class Icdcode < ApplicationRecord
    def self.search_by_diagnosis_code(search_term)
        where("LOWER(full_code) LIKE :search_term OR LOWER(diagnosis_code) LIKE :search_term OR LOWER(abbreviated_description) LIKE :search_term OR LOWER(category_title) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.search_by_full_code(search_term)
        where("LOWER(full_code) LIKE :search_term OR LOWER(diagnosis_code) LIKE :search_term OR LOWER(abbreviated_description) LIKE :search_term OR LOWER(category_title) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.search_by_abbreviated_description(search_term)
        where("LOWER(full_code) LIKE :search_term OR LOWER(diagnosis_code) LIKE :search_term OR LOWER(abbreviated_description) LIKE :search_term OR LOWER(category_title) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.search_by_category_title(search_term)
        where("LOWER(full_code) LIKE :search_term OR LOWER(diagnosis_code) LIKE :search_term OR LOWER(abbreviated_description) LIKE :search_term OR LOWER(category_title) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end