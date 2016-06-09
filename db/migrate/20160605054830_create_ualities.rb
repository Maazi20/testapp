class CreateUalities < ActiveRecord::Migration
  def change
    create_table :ualities do |t|

      t.timestamps null: false
    end
  end
end
