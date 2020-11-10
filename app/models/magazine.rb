class Magazine < ApplicationRecord
  has_many :positions
  has_many :enologists, through: :positions
end
