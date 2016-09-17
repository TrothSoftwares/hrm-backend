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
      t.decimal :basic ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :houserentallowance ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :adhoc ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :transport ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :misc ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :statbonus ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :provfund ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :proftax ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :incometax ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :essp ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :otherearningsnt ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :oncallshiftallowance ,  :precision => 8, :scale => 2 ,:default => 0
      t.decimal :gross ,  :precision => 8, :scale => 2,:default => 0
      t.timestamps
    end
  end
end
