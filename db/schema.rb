# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_01_140759) do
  create_table "cuadros", charset: "latin1", force: :cascade do |t|
    t.string "autor", null: false
    t.string "fecha", null: false
    t.string "estilo", null: false
    t.float "precio", null: false
    t.string "foto", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foto"], name: "index_cuadros_on_foto", unique: true
  end

  create_table "esculturas", charset: "latin1", force: :cascade do |t|
    t.string "autor", null: false
    t.string "fecha", null: false
    t.string "estilo", null: false
    t.float "precio", null: false
    t.string "foto", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foto"], name: "index_esculturas_on_foto", unique: true
  end

  create_table "manualidads", charset: "latin1", force: :cascade do |t|
    t.string "autor", null: false
    t.string "fecha", null: false
    t.string "estilo", null: false
    t.float "precio", null: false
    t.string "foto", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foto"], name: "index_manualidads_on_foto", unique: true
  end

  create_table "users", charset: "latin1", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "password_confirmation"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
