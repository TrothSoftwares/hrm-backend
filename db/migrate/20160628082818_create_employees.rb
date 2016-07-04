class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :email
      t.string :contact
      t.string :designation
      t.date :dateofjoin
      t.string :department
      t.string :location
      t.string :gender
      t.string :maritialstatus
      t.date :dob
      t.text :temporaryaddress
      t.text :permenantaddress
      t.string :status
      t.text :url
      t.text :pass
      t.string :role
      t.timestamps
    end
  end
end
