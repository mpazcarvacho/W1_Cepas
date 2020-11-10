class Enologist < ApplicationRecord
  has_many :positions
  has_many :magazines, through: :positions
  has_many :scores
  has_many :wines, through: :scores

  accepts_nested_attributes_for :positions, :scores

  def position_name
    position&.name
  end
  
end
