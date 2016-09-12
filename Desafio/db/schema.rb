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

ActiveRecord::Schema.define(version: 20160912041528) do

  create_table "compras", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "mercadoria_id"
    t.integer  "quantidade"
    t.float    "preco"
  end

  create_table "itens_compra", force: :cascade do |t|
    t.integer  "compra_id"
    t.integer  "mercadoria_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "quantidade"
    t.float    "preco"
  end

  create_table "itens_venda", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "preco"
    t.integer  "quantidade"
    t.integer  "mercadoria_id"
    t.integer  "venda_id"
  end

  create_table "mercadorias", force: :cascade do |t|
    t.string   "tipo"
    t.string   "nome"
    t.integer  "quantidade"
    t.float    "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "vendedor_id"
    t.integer  "mercadoria_id"
    t.integer  "quantidade"
    t.float    "preco"
  end

  create_table "vendedores", force: :cascade do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.float    "saldo",           default: 10000.0
  end

end
