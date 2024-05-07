class Team < ApplicationRecord
  has_many :members

  validates :name, presence: true, uniqueness: true
end
