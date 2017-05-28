class CreatePlatformEndpoints < ActiveRecord::Migration[5.1]
  def change
    create_table :platform_endpoints do |t|

      t.timestamps
    end
  end
end
