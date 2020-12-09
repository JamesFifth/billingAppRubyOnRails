class Cptcode < ApplicationRecord
    def self.search_by_cpt_code(search_term)
        where("LOWER(cpt_code) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.search_by_cpt_description(search_term)
        # where("LOWER(cpt_description) LIKE :search_term", search_term: "%#{search_term.downcase}%")
        where("LOWER(cpt_description) LIKE :search_term OR LOWER(cpt_code) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
    def self.find_cpt(cpt_input)
        where("LOWER(cpt_description) LIKE :search_term OR LOWER(cpt_code) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end
