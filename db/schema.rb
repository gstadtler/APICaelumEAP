# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_06_141250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "escalas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interpretacoes", force: :cascade do |t|
    t.string "nome"
    t.integer "valor_maximo"
    t.integer "valor_minimo"
    t.bigint "escala_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["escala_id"], name: "index_interpretacoes_on_escala_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "genero"
    t.text "hip_diag"
    t.integer "idade"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pacientes_on_user_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.string "nome"
    t.bigint "escala_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["escala_id"], name: "index_parametros_on_escala_id"
  end

  create_table "registros", force: :cascade do |t|
    t.integer "pontuacao"
    t.bigint "paciente_id", null: false
    t.bigint "escala_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["escala_id"], name: "index_registros_on_escala_id"
    t.index ["paciente_id"], name: "index_registros_on_paciente_id"
  end

  create_table "respostas", force: :cascade do |t|
    t.string "nome"
    t.integer "pontuacao"
    t.bigint "parametro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parametro_id"], name: "index_respostas_on_parametro_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
    t.string "cargo"
    t.string "documento"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "contacts", "users"
  add_foreign_key "interpretacoes", "escalas"
  add_foreign_key "pacientes", "users"
  add_foreign_key "parametros", "escalas"
  add_foreign_key "registros", "escalas"
  add_foreign_key "registros", "pacientes"
  add_foreign_key "respostas", "parametros"
end
