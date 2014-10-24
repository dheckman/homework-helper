class Problem < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :text, presence: true
  validates :user, presence: true
end
