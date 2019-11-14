class CreateEstablecimientos < ActiveRecord::Migration[6.0]
  def change
    create_table :establecimientos do |t|
      t.string :categoria
      t.text :nombre
      t.text :img_coorporativa
      t.text :clasificacion
      t.text :telefono
      t.text :direccion
      t.text :horario
      t.text :precio_domicilio
      t.string :ciudad
      t.text :ubicacion
      t.text :descripcion
      t.string :plan
      t.string :tipo_domicilio
      t.text :horariologico
      t.string :tipo_info

    end
  end
end
