class CompleteProposal < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true

  has_many :topics
  belongs_to :user
end
