class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.integer :bedrooms

      t.timestamps
    end
  end
end
