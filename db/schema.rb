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

ActiveRecord::Schema.define(version: 20161226161800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_details", force: :cascade do |t|
    t.string   "book_title"
    t.string   "one_author_name"
    t.string   "one_designation"
    t.string   "one_organization"
    t.string   "two_author_name"
    t.string   "two_designation"
    t.string   "two_organization"
    t.string   "three_author_name"
    t.string   "three_designation"
    t.string   "three_organization"
    t.string   "publisher_name"
    t.text     "publisher_address"
    t.string   "isbn"
    t.string   "one_publication"
    t.string   "edition_number"
    t.string   "reprint_year"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.index ["user_id"], name: "index_book_details_on_user_id", using: :btree
  end

  create_table "conference_details", force: :cascade do |t|
    t.string   "academic_year"
    t.string   "sem"
    t.string   "conference_name"
    t.string   "conference_organizer"
    t.text     "address"
    t.string   "city"
    t.string   "conference_type"
    t.string   "isbn"
    t.string   "paper_title"
    t.string   "one_author_name"
    t.string   "one_department"
    t.string   "one_organization"
    t.string   "one_others"
    t.string   "two_author_name"
    t.string   "two_department"
    t.string   "two_organization"
    t.string   "two_others"
    t.string   "three_author_name"
    t.string   "three_department"
    t.string   "three_organization"
    t.string   "three_others"
    t.string   "volume_number"
    t.string   "issue_number"
    t.string   "page_start"
    t.string   "page_end"
    t.string   "date_submission"
    t.string   "date_acceptance"
    t.string   "date_published"
    t.text     "paper_abstract"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "paper_file_name"
    t.string   "paper_content_type"
    t.integer  "paper_file_size"
    t.datetime "paper_updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.index ["user_id"], name: "index_conference_details_on_user_id", using: :btree
  end

  create_table "consulting_projects", force: :cascade do |t|
    t.string   "project_title"
    t.string   "consulting_name"
    t.text     "address"
    t.string   "contact_person"
    t.string   "mobile"
    t.string   "principle_name"
    t.string   "principle_designation"
    t.string   "principle_company"
    t.text     "principle_address"
    t.string   "principle_mobile"
    t.string   "principle_mail_id"
    t.string   "co_investigator_name"
    t.string   "co_investigator_designation"
    t.string   "co_investigator_company"
    t.text     "co_investigator_address"
    t.string   "co_investigator_mobile"
    t.string   "co_investigator_mail_id"
    t.string   "jrf1_name"
    t.string   "jrf1_designation"
    t.string   "jrf1_organizer"
    t.text     "jrf1_address"
    t.string   "jrf1_mobile"
    t.string   "jrf1_mail_id"
    t.string   "jrf2_name"
    t.string   "jrf2_designation"
    t.string   "jrf2_organizer"
    t.text     "jrf2_address"
    t.string   "jrf2_mobile"
    t.string   "jrf2_mail_id"
    t.string   "jrf3_name"
    t.string   "jrf3_designation"
    t.string   "jrf3_organizer"
    t.text     "jrf3_address"
    t.string   "jrf3_mobile"
    t.string   "jrf3_mail_id"
    t.string   "jrf4_name"
    t.string   "jrf4_designation"
    t.string   "jrf4_organizer"
    t.text     "jrf4_address"
    t.string   "jrf4_mobile"
    t.string   "jrf4_mail_id"
    t.string   "jrf5_name"
    t.string   "jrf5_designation"
    t.string   "jrf5_organizer"
    t.text     "jrf5_address"
    t.string   "jrf5_mobile"
    t.string   "jrf5_mail_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_consulting_projects_on_user_id", using: :btree
  end

  create_table "funded_projects", force: :cascade do |t|
    t.string   "project_title"
    t.text     "about_project"
    t.string   "funding_agency"
    t.string   "sub_agency"
    t.text     "address"
    t.string   "project_value"
    t.string   "project_submitted_date"
    t.string   "sanctioned_amount"
    t.string   "total_amount_recieved"
    t.string   "date_of_completion"
    t.text     "remarks"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_funded_projects_on_user_id", using: :btree
  end

  create_table "india", force: :cascade do |t|
    t.date     "vj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journal_details", force: :cascade do |t|
    t.string   "academic_year"
    t.string   "sem"
    t.string   "journal_name"
    t.string   "issn_no"
    t.float    "impact_factor"
    t.string   "journal_type"
    t.string   "paper_title"
    t.string   "one_author_name"
    t.string   "one_dept"
    t.string   "one_organization"
    t.string   "one_others"
    t.string   "two_author_name"
    t.string   "two_dept"
    t.string   "two_organization"
    t.string   "two_others"
    t.string   "three_author_name"
    t.string   "three_dept"
    t.string   "three_organization"
    t.string   "three_others"
    t.string   "vol_no"
    t.string   "issue_no"
    t.string   "page_no"
    t.string   "date_submitted"
    t.string   "date_acceptance"
    t.string   "date_publish"
    t.text     "paper_abstract"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "paper_file_name"
    t.string   "paper_content_type"
    t.integer  "paper_file_size"
    t.datetime "paper_updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.index ["user_id"], name: "index_journal_details_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "book_details", "users"
  add_foreign_key "conference_details", "users"
  add_foreign_key "consulting_projects", "users"
  add_foreign_key "funded_projects", "users"
  add_foreign_key "journal_details", "users"
end
