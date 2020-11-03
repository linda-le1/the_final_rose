class Outing < ApplicationRecord
    has_many :contestants, through: :contestant_outings
    validates :name, presence: true
    validates :location, presence: true
    validates :date, presence: true
  end
