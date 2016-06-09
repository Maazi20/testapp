class CreateOvalueVariants < ActiveRecord::Migration
  def change
    create_table :ovalue_variants do |t|
      t.belongs_to :ovalue , index: true
      t.belongs_to :variant , index: true

      
      t.timestamps null: false
    end
  end
end
