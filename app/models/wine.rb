class Wine < ApplicationRecord
  has_many :assemblies
  has_many :strains, through: :assemblies
  has_many :scores
  has_many :enologists, through: :scores

  accepts_nested_attributes_for :assemblies

  def strains_details
    # Falta ordenar cepas por orden alfabético
    details = assemblies.map do |assembly|
      "#{assembly.strain_name}: #{assembly.percentage}%"
    end
    details.join(", ")
  end

end
