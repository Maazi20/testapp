class CreateOtypes < ActiveRecord::Migration
  def change
    create_table :otypes do |t|

      t.string :name
      t.timestamps null: false
    end
  end
end
