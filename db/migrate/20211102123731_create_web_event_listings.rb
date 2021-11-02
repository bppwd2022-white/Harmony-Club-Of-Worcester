class CreateWebEventListings < ActiveRecord::Migration[6.1]
  def change
    create_table :web_event_listings do |t|
      t.string :title
      t.integer :location_id

      t.timestamps
    end
  end
end
