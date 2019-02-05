class Meeting < ApplicationRecord
validates :location, :title, :agenda, :time, presence: true
validates :time 

  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers

end
