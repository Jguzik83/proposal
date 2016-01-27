class Topic < ActiveRecord::Base

  validates :main_topic, presence: true
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user
  belongs_to :complete_proposal
end
