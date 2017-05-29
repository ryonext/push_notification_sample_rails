class CreatePushNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :push_notifications do |t|

      t.timestamps
    end
  end
end
