class CreateOvalues < ActiveRecord::Migration
  def change
    create_table :ovalues do |t|

      t.belongs_to :otype , index: true
      t.integer :discount , default: 0
      t.string :value
      t.timestamps null: false
    end
  end
end
