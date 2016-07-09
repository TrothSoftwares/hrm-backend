class CreateSalaries < ActiveRecord::Migration[5.1]
  def change
    create_table :salaries do |t|
      t.references :employee , index: true, foreign_key: true
      t.datetime :issuedate
      t.integer :totaldays
      t.integer :leavedays
      t.integer :presentdays
      t.string :status
      t.text :comments
      t.timestamps
    end
  end
end
