class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.references :resteraunt, foreign_key: true
      t.float :price
      t.string :type

      t.timestamps
    end
  end
end
