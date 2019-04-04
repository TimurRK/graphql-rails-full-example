class Fantasy < ApplicationRecord
  has_one :book, as: :bookable
end
