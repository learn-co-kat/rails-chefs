class Meal < ApplicationRecord
    belongs_to :customer
    belongs_to :cook
end
