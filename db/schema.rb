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

ActiveRecord::Schema.define(version: 2019_10_30_012407) do

  create_table "aliados", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "ciudad", null: false
    t.string "nombre", limit: 100, null: false
    t.string "celular", limit: 15, null: false
    t.string "id_fanpage", limit: 100, null: false
    t.string "link_fanpage", limit: 100, null: false
    t.string "hora_inicio", limit: 4, null: false
    t.string "hora_fin", limit: 4, null: false
    t.string "horario_logic", limit: 80, null: false
    t.string "horario_text", limit: 200, null: false
  end

  create_table "copia", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci", force: :cascade do |t|
    t.integer "id", null: false
    t.string "ruta", limit: 600, null: false, collation: "latin1_swedish_ci"
    t.integer "id_establecimiento"
  end

  create_table "establecimiento", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "categoria", limit: 2, null: false, collation: "utf8_unicode_ci"
    t.string "nombre", limit: 600, null: false, collation: "utf8_unicode_ci"
    t.string "img_coorporativa", limit: 600, null: false, collation: "utf8_unicode_ci"
    t.string "clasificacion", limit: 400, null: false, collation: "utf8_unicode_ci"
    t.string "telefono", limit: 600, null: false, collation: "utf8_unicode_ci"
    t.string "direccion", limit: 1500, null: false, collation: "utf8_spanish_ci"
    t.string "horario", limit: 600, null: false, collation: "utf8_unicode_ci"
    t.string "precio_domicilio", limit: 600, collation: "utf8_unicode_ci"
    t.string "ciudad", limit: 2, null: false, collation: "utf8mb4_unicode_ci"
    t.string "ubicacion", limit: 600, collation: "utf8_unicode_ci"
    t.string "descripcion", limit: 2500, collation: "utf8_unicode_ci"
    t.string "plan", limit: 2, collation: "utf8_unicode_ci"
    t.string "tipo_domicilio", limit: 2, collation: "utf8_unicode_ci"
    t.string "horariologico", limit: 600, collation: "utf8_unicode_ci"
    t.string "tipo_info", limit: 2, null: false, collation: "utf8_unicode_ci"
  end

  create_table "establecimientos", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci", force: :cascade do |t|
    t.string "categoria"
    t.text "nombre"
    t.text "img_coorporativa"
    t.text "clasificacion"
    t.text "telefono"
    t.text "direccion"
    t.text "horario"
    t.text "precio_domicilio"
    t.string "ciudad"
    t.text "ubicacion"
    t.text "descripcion"
    t.string "plan"
    t.string "tipo_domicilio"
    t.text "horariologico"
    t.string "tipo_info"
  end

  create_table "galeria", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci", force: :cascade do |t|
    t.string "ruta"
    t.integer "id_establecimiento"
  end

  create_table "producto", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre", limit: 200, null: false
    t.string "precio", limit: 200, null: false
    t.string "icon_plato", limit: 200, null: false
    t.string "detalle", limit: 700
    t.integer "id_establecimiento"
    t.string "destacado", limit: 2, null: false
    t.index ["id_establecimiento"], name: "id"
  end

  create_table "productos", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "precio"
    t.string "icon_plato"
    t.string "detalle"
    t.integer "id_establecimiento"
    t.string "destacado"
  end

  create_table "redes", primary_key: "id_red", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ruta", limit: 200, null: false
    t.integer "id", null: false
    t.index ["id"], name: "id"
  end

  create_table "usuarios", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "usuario", limit: 100
    t.string "pass", limit: 100, null: false
    t.string "nombre", limit: 100, null: false
    t.string "email", limit: 100, null: false
    t.string "movil", limit: 100
    t.string "userPic", limit: 100
    t.integer "tipousuario", limit: 1
  end

  add_foreign_key "producto", "establecimiento", column: "id_establecimiento", name: "producto_ibfk_1"
  add_foreign_key "redes", "establecimiento", column: "id", name: "redes_ibfk_1"
end
