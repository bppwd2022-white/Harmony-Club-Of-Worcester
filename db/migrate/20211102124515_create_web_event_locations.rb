class CreateWebEventLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :web_event_locations do |t|
      t.string :title

      t.timestamps
    end
  end
end
