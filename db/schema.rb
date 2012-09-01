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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120607060952) do

  create_table "clients", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nickname"
    t.string   "company_id"
    t.string   "email1"
    t.string   "email2"
    t.string   "telefono"
    t.string   "direccion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "nombre"
    t.string   "cuit"
    t.string   "direccion"
    t.string   "web"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "telefono3"
    t.string   "contacto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "computers", :force => true do |t|
    t.string   "company_id"
    t.string   "ip"
    t.string   "nombre"
    t.string   "password"
    t.string   "mac"
    t.string   "numserie"
    t.string   "fechacompra"
    t.string   "motherboard_id"
    t.string   "fechacompmother"
    t.string   "microprocessor_id"
    t.string   "fechacompmicro"
    t.string   "memory_id"
    t.string   "cantidadmemoria"
    t.string   "fechacompmemoria"
    t.string   "disk_id"
    t.string   "fechacompdisk"
    t.string   "printer_id"
    t.string   "fechacompimpresora"
    t.string   "scanner_id"
    t.string   "fechacompscanner"
    t.string   "screen_id"
    t.string   "fechacompmonitor"
    t.string   "system_id"
    t.string   "fechacompsisop"
    t.string   "numerolicen"
    t.string   "antivirus"
    t.string   "software2"
    t.string   "software3"
    t.string   "software4"
    t.string   "software5"
    t.string   "software6"
    t.string   "placavideo"
    t.string   "placared"
    t.string   "unidadoptica"
    t.text     "aclaraciones"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "disks", :force => true do |t|
    t.string   "mark_id"
    t.string   "modelo"
    t.string   "cache"
    t.string   "capacidad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hours", :force => true do |t|
    t.text     "detalle"
    t.float    "horas"
    t.integer  "owner_id"
    t.string   "factura"
    t.date     "fecha"
    t.time     "hora"
    t.boolean  "autorizado"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "company_id"
  end

  create_table "marks", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memories", :force => true do |t|
    t.string   "capacidad"
    t.string   "mark_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microprocessors", :force => true do |t|
    t.string   "modelo"
    t.string   "nombre"
    t.string   "velocidad"
    t.string   "mark_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "motherboards", :force => true do |t|
    t.string   "modelo"
    t.string   "mark_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "mail"
    t.string   "web"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id",    :null => false
  end

  create_table "printers", :force => true do |t|
    t.string   "modelo"
    t.string   "mark_id"
    t.string   "type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proyects", :force => true do |t|
    t.string   "url"
    t.string   "nombre"
    t.string   "company_id"
    t.string   "estado"
    t.text     "detalle"
    t.text     "observacion"
    t.string   "owner_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "scanners", :force => true do |t|
    t.string   "modelo"
    t.string   "mark_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "screens", :force => true do |t|
    t.string   "modelo"
    t.string   "mark_id"
    t.string   "size_id"
    t.string   "type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sizes", :force => true do |t|
    t.string   "pulgadas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "systems", :force => true do |t|
    t.string   "nombre"
    t.string   "version"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login",                               :null => false
    t.string   "crypted_password",                    :null => false
    t.string   "password_salt",                       :null => false
    t.string   "persistence_token",                   :null => false
    t.string   "single_access_token",                 :null => false
    t.string   "perishable_token",                    :null => false
    t.integer  "login_count",         :default => 0,  :null => false
    t.integer  "failed_login_count",  :default => 0,  :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "name",                :default => "", :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
