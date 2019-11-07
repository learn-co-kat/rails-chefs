class Customer < ApplicationRecord
    has_many :meals
    has_many :cooks, through: :meals
end
