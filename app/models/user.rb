class User < ApplicationRecord
    has_many :reviews
    has_many :laundries, through: :reviews
end
