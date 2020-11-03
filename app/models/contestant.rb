class Contestant <ApplicationRecord
  belongs_to :bachelorette
  has_many :outings, through: :contestant_outings
end
