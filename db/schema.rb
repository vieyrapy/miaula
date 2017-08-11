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

ActiveRecord::Schema.define(version: 20170727231718) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facultad_id"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "anho_carreras", force: :cascade do |t|
    t.string "anho"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asignacion_aulas", force: :cascade do |t|
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "anho_carrera_id"
    t.integer "facultad_id"
    t.integer "aula_id"
    t.integer "registro_carrera_id"
    t.integer "semestre_id"
    t.integer "observacion_id"
  end

  create_table "asignacions", force: :cascade do |t|
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aulas", force: :cascade do |t|
    t.string "nombre"
    t.string "bloque"
    t.integer "capacidad"
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_aulas", force: :cascade do |t|
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "aula_id"
  end

  create_table "facultads", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observacions", force: :cascade do |t|
    t.string "nombreDia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_carreras", force: :cascade do |t|
    t.string "nombreCarrera"
    t.string "anho"
    t.string "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facultad_id"
  end

  create_table "semestres", force: :cascade do |t|
    t.string "nombreSemestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "registro_carrera_id"
    t.integer "facultad_id"
    t.integer "anho_carrera_id"
    t.string "nombre"
    t.datetime "fecha_nacimiento"
    t.boolean "es_mujer", default: false
    t.integer "asignacion_aula_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "ci"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "registro_carrera_id"
    t.integer "facultad_id"
    t.integer "anho_carrera_id"
  end

end
