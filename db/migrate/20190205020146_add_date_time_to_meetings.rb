class AddDateTimeToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :time, :datetime
  end
end
