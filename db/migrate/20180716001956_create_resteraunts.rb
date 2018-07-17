class CreateResteraunts < ActiveRecord::Migration[5.1]
  def change
    create_table :resteraunts do |t|
      t.json :location
      t.references :user, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
