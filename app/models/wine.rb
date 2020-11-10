class Wine < ApplicationRecord
  has_many :assemblies
  has_many :strains, through: :assemblies
  has_many :scores
  has_many :enologists, through: :scores

  accepts_nested_attributes_for :assemblies, :scores

  # validate :strain_percentages_validation, on: :create

  def strains_details
    
    details = assemblies.map do |assembly|
      "#{assembly.strain_name}: #{assembly.percentage}%"
    end
    details.sort.join(", ")
  end

  # suma de strains percentages = 100
  # def strain_percentages_validation
  #   if @wine.assemblies.percentage&.sum =100
  #     error
  #   end

  # end

end
