class CreateZaduzenjas < ActiveRecord::Migration
  def change
    create_table :zaduzenjas do |t|
      t.integer :id_zaduzenja
      t.date :datum_zaduzenja
      t.integer :fk_sifra_inventara
      t.integer :fk_sifra_korisnika

      t.timestamps null: false
    end
  end
end
