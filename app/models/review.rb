class Review < ApplicationRecord
    belongs_to  :laundry
    belongs_to  :user
end
