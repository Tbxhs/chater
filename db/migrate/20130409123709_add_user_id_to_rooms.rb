class AddUserIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :user_id, :integer
    Room.destroy_all
    22.times do |index|
      Room.create(title:"room with id #{index+1}",description:"the description of room-#{index+1}")
    end
    User.create(username: 'admin', email: 'admin@admin.com')
    Room.update_all({user_id: (User.first.id)}) if User.first
  end
end
