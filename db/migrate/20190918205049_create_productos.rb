class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :precio
      t.string :icon_plato
      t.string :detalle
      t.integer :id_establecimiento
      t.string :destacado

    end
  end
end
