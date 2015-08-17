# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150817212520) do

  create_table "registros", force: true do |t|
    t.string   "Nombre"
    t.string   "Segundo_Nombre"
    t.string   "Apellido_Paterno"
    t.string   "Apellido_Materno"
    t.integer  "Telefono_principal"
    t.integer  "Celular"
    t.string   "Email"
    t.string   "Ocupacion"
    t.date     "Fecha_de_Nacimiento"
    t.string   "Direccion"
    t.integer  "Codigo_Postal"
    t.string   "Ciudad"
    t.string   "Estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
