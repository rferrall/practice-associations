class Meeting < ApplicationRecord
validates :location, :title, :agenda, :time, presence: true


  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers


  def time_cannot_be_in_past
    if :time <= Time.now
      render json: {message: 'Time must be in the future'}
      
    end
  
  end
end
