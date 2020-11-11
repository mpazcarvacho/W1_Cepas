class Score < ApplicationRecord
  belongs_to :wine
  belongs_to :enologist

  # validates :score, :inclusion => 1..100, {message: 'score must be within range 1 -100'}
  validates :score, :inclusion => { :in => 1..100,
    :message => 'score must be within range 1 -100' }

  def enologist_name
    enologist&.name
  end

  def enologist_age
    enologist&.age.to_s
  end


end
