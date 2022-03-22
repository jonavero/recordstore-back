class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :apellido
      t.string :genero
      t.string :pais

      t.timestamps
    end
  end
end
