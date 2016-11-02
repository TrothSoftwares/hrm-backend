# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160908055215) do

  create_table "attendances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "totaldays"
    t.integer  "leavedays"
    t.integer  "presentdays"
    t.string   "status"
    t.text     "comments"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_attendances_on_user_id", using: :btree
  end

  create_table "bids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id", "user_id"], name: "index_bids_on_job_id_and_user_id", using: :btree
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "email"
    t.string   "contact"
    t.string   "designation"
    t.date     "dateofjoin"
    t.string   "department"
    t.string   "location"
    t.string   "gender"
    t.string   "maritialstatus"
    t.date     "dob"
    t.text     "temporaryaddress"
    t.text     "permenantaddress"
    t.string   "status"
    t.text     "url"
    t.text     "pass"
    t.string   "role"
    t.decimal  "basic",                precision: 8, scale: 2, default: "0.0"
    t.decimal  "houserentallowance",   precision: 8, scale: 2, default: "0.0"
    t.decimal  "adhoc",                precision: 8, scale: 2, default: "0.0"
    t.decimal  "transport",            precision: 8, scale: 2, default: "0.0"
    t.decimal  "misc",                 precision: 8, scale: 2, default: "0.0"
    t.decimal  "statbonus",            precision: 8, scale: 2, default: "0.0"
    t.decimal  "provfund",             precision: 8, scale: 2, default: "0.0"
    t.decimal  "proftax",              precision: 8, scale: 2, default: "0.0"
    t.decimal  "incometax",            precision: 8, scale: 2, default: "0.0"
    t.decimal  "essp",                 precision: 8, scale: 2, default: "0.0"
    t.decimal  "otherearningsnt",      precision: 8, scale: 2, default: "0.0"
    t.decimal  "oncallshiftallowance", precision: 8, scale: 2, default: "0.0"
    t.decimal  "gross",                precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "startsat"
    t.datetime "endsat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "header"
    t.text     "desc"
    t.text     "skills"
    t.integer  "salary"
    t.integer  "nofvaccancy"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "leaverolls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.datetime "fromdate"
    t.datetime "todate"
    t.integer  "days"
    t.string   "status"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leaverolls_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                          default: "",    null: false
    t.string   "encrypted_password",                             default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                  default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token",                           default: "",    null: false
    t.integer  "employee_id"
    t.string   "role"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "contact"
    t.string   "designation"
    t.date     "dateofjoin"
    t.date     "endcontract"
    t.date     "endqid"
    t.string   "department"
    t.string   "location"
    t.string   "gender"
    t.string   "maritialstatus"
    t.date     "dob"
    t.text     "temporaryaddress"
    t.text     "permenantaddress"
    t.string   "status"
    t.text     "url"
    t.text     "pass"
    t.text     "passportno"
    t.decimal  "basic",                  precision: 8, scale: 2, default: "0.0"
    t.decimal  "houserentallowance",     precision: 8, scale: 2, default: "0.0"
    t.decimal  "adhoc",                  precision: 8, scale: 2, default: "0.0"
    t.decimal  "transport",              precision: 8, scale: 2, default: "0.0"
    t.decimal  "misc",                   precision: 8, scale: 2, default: "0.0"
    t.decimal  "statbonus",              precision: 8, scale: 2, default: "0.0"
    t.decimal  "provfund",               precision: 8, scale: 2, default: "0.0"
    t.decimal  "proftax",                precision: 8, scale: 2, default: "0.0"
    t.decimal  "incometax",              precision: 8, scale: 2, default: "0.0"
    t.decimal  "essp",                   precision: 8, scale: 2, default: "0.0"
    t.decimal  "otherearningsnt",        precision: 8, scale: 2, default: "0.0"
    t.decimal  "oncallshiftallowance",   precision: 8, scale: 2, default: "0.0"
    t.decimal  "gross",                  precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "attendances", "users"
  add_foreign_key "leaverolls", "users"
end
