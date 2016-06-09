class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|

      t.belongs_to :otype, index: true
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end
