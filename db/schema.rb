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

ActiveRecord::Schema.define(version: 20180124071304) do

  create_table "blog_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
  end

  create_table "blogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.string "linkedin_url"
    t.string "company_url"
    t.string "twitter_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id"
    t.string "collage_url"
    t.string "collage_location"
    t.string "collage_name"
    t.string "stream"
    t.string "university"
    t.text "other_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programming_skills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "expert_level"
    t.bigint "user_id"
    t.bigint "project_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_programming_skills_on_project_id"
    t.index ["user_id"], name: "index_programming_skills_on_user_id"
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_company_id"
    t.bigint "user_id"
    t.string "project_url"
    t.string "client"
    t.string "location"
    t.text "other_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_company_id"], name: "index_projects_on_user_company_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "role_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_role_permissions_on_permission_id"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_line"
    t.string "second_line"
    t.string "area"
    t.string "landmark"
    t.string "city"
    t.string "country"
    t.boolean "is_current"
    t.boolean "is_permanent"
    t.bigint "user_id"
    t.integer "pincode"
    t.text "other_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.bigint "company_id"
    t.bigint "user_id"
    t.string "company_url"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "other_details"
    t.index ["company_id"], name: "index_user_companies_on_company_id"
    t.index ["user_id"], name: "index_user_companies_on_user_id"
  end

  create_table "user_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "email_id"
    t.string "alternate_email"
    t.string "contact_no"
    t.string "alternate_contact"
    t.date "dob"
    t.string "linkedin_url"
    t.string "twitter_url"
    t.string "github_url"
    t.string "facebook_url"
    t.string "instagram_url"
    t.string "web_page_url"
    t.text "other_details"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
