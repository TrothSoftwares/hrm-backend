class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.integer :job_id
      t.integer :user_id
      t.integer :position

      t.timestamps
    end
    add_index :bids, [:job_id, :user_id]

  end
end
