class CreateOutings < ActiveRecord::Migration[7.0]
  def change
    create_table :outings do |t|
      t.string :name
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
