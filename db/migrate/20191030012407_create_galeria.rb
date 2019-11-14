class CreateGaleria < ActiveRecord::Migration[6.0]
  def change
    create_table :galeria do |t|
      t.string :ruta
      t.integer :id_establecimiento

    end
  end
end
