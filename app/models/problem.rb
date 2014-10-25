class Problem < ActiveRecord::Base
  belongs_to :user
  has_many :notes

  validates :text, presence: true
  validates :tried, presence: true
  validates :user, presence: true
end
