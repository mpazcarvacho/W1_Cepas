class Score < ApplicationRecord
  belongs_to :wine
  belongs_to :enologist
end
