class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.references :resteraunt, foreign_key: true
      t.string :type
      t.float :price

      t.timestamps
    end
  end
end
