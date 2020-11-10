class Wine < ApplicationRecord
  has_many :assemblies
  has_many :strains, through: :assemblies
  has_many :scores
  has_many :enologists, through: :scores

  accepts_nested_attributes_for :assemblies
end
