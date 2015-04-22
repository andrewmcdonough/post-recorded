class CreateRecordedGets < ActiveRecord::Migration
  def change
    create_table :recorded_gets do |t|
      t.text :content
      t.string :ip_address

      t.timestamps null: false
    end
  end
end
