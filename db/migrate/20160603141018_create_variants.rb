class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|

      t.belongs_to :product, index: true

      t.integer :price
      t.timestamps null: false
    end
  end
end
