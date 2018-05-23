class CreateInventars < ActiveRecord::Migration
  def change
    create_table :inventars do |t|
      t.integer :id_inventara
      t.string :naziv_inventara
      t.integer :kolicina
      t.integer :fk_sifra_lokacije
      t.integer :fk_sifra_vrste_inventara

      t.timestamps null: false
    end
  end
end
