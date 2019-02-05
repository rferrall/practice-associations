class RemoveTimeFromMeeting < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :time, :time

    
  end
end
