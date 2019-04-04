class Book < ApplicationRecord
  belongs_to :user

  belongs_to :bookable, polymorphic: true
end
