class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :startsat
      t.datetime :endsat
      t.timestamps
    end
  end
end
