class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.string :authentication_token, null: false, default: ""
      t.integer :employee_id
      t.string :role


      t.string :firstname
      t.string :middlename
      t.string :lastname
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

      # t.string   :confirmation_token




      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
