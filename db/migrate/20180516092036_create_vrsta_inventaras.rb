class CreateVrstaInventaras < ActiveRecord::Migration
  def change
    create_table :vrsta_inventaras do |t|
      t.integer :sifra_vrste
      t.string :naziv_vrste

      t.timestamps null: false
    end
  end
end
