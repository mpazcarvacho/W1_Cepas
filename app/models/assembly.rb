class Assembly < ApplicationRecord
  belongs_to :strain
  belongs_to :wine
  
  def strain_name
    strain&.name
  end

end
