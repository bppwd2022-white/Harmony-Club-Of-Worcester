class CreateSelections < ActiveRecord::Migration[6.1]
  def change
    create_table :selections do |t|
      t.string :location
      t.string :title
      t.boolean :visible
      t.integer :position

      t.timestamps
    end
  end
end
