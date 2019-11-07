# require 'pry'
class Cook < ApplicationRecord
    has_many :meals
    has_many :customers, through: :meals

    validates :age, inclusion: {in: 0..210}
    validate :restrict_name

    def restrict_name
        if !name.include?("beef")
            errors.add(:name, "NO BEEF")
        end
    end
end
