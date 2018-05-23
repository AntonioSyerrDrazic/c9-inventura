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

ActiveRecord::Schema.define(version: 20180522103730) do

  create_table "inventars", force: :cascade do |t|
    t.integer  "id_inventara"
    t.string   "naziv_inventara"
    t.integer  "kolicina"
    t.integer  "fk_sifra_lokacije"
    t.integer  "fk_sifra_vrste_inventara"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "korisniks", force: :cascade do |t|
    t.integer  "id_korisnika"
    t.string   "username"
    t.string   "password"
    t.string   "ime"
    t.string   "prezime"
    t.string   "email"
    t.string   "broj_telefona"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lokacijas", force: :cascade do |t|
    t.integer  "id_lokacije"
    t.string   "grad"
    t.string   "drzava"
    t.string   "adresa"
    t.integer  "post_br"
    t.string   "naziv_prostora"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "vrsta_inventaras", force: :cascade do |t|
    t.integer  "sifra_vrste"
    t.string   "naziv_vrste"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "zaduzenjas", force: :cascade do |t|
    t.integer  "id_zaduzenja"
    t.date     "datum_zaduzenja"
    t.integer  "fk_sifra_inventara"
    t.integer  "fk_sifra_korisnika"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
