class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :header
      t.text :desc
      t.text :skills
      t.integer :salary
      t.integer :nofvaccancy
      t.string :location

      t.timestamps
    end
  end
end
