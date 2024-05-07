class Member < ApplicationRecord
  belongs_to :team
  has_and_belongs_to_many :projects

  validates :first_name, :last_name, presence: true
end
