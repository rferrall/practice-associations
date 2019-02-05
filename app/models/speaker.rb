class Speaker < ApplicationRecord
validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

  has_many :meeting_speakers
  has_many :meetings, through: :meeting_speakers
end
