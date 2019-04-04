class Fantastic < ApplicationRecord
  has_one :book, as: :bookable
end
