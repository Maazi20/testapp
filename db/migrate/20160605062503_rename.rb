class Rename < ActiveRecord::Migration
   def self.up
    rename_table :ovalue_variants,  :ovalues_variants
  end

  def self.down
    rename_table :ovalues_variants , :ovalue_variants
  end
end
