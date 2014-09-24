class CreateSyohins < ActiveRecord::Migration
  def change
    create_table :syohins do |t|
      t.integer :kingaku
      t.datetime :record_datetime

      t.timestamps
    end
  end
end
