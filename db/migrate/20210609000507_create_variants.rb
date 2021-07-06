class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.integer :stock
      t.references :size, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
