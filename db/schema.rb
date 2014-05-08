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

ActiveRecord::Schema.define(version: 20140508013901) do

  create_table "inventarios", force: true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "tipo"
    t.float    "costo"
    t.string   "sistema_operativo"
    t.string   "cpu"
    t.string   "ram"
    t.string   "disco_duro"
    t.string   "tarjeta_madre"
    t.string   "monitor"
    t.string   "tipo_conexion"
    t.string   "direccion_mac"
    t.string   "usuario"
    t.string   "area"
    t.string   "estado_general"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
