class Score < ApplicationRecord
  belongs_to :wine
  belongs_to :enologist

  def enologist_name
    enologist&.name
  end

  def enologist_age
    enologist&.age.to_s
  end

end
