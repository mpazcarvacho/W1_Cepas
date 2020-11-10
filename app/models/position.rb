class Position < ApplicationRecord
  belongs_to :enologist
  belongs_to :magazine

  def position_name
    position&.position
  end

  def magazine_name
    magazine&.name
  end

end
