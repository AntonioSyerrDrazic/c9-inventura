class CreateKorisniks < ActiveRecord::Migration
  def change
    create_table :korisniks do |t|
      t.integer :id_korisnika
      t.string :username
      t.string :password
      t.string :ime
      t.string :prezime
      t.string :email
      t.string :broj_telefona

      t.timestamps null: false
    end
  end
end
