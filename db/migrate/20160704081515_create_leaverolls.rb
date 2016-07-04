class CreateLeaverolls < ActiveRecord::Migration[5.1]
  def change
    create_table :leaverolls do |t|

      t.references :employee , index: true, foreign_key: true
      t.datetime :fromdate
      t.datetime :todate
      t.integer :days
      t.string :status
      t.text :comments
      
      t.timestamps
    end
  end
end
