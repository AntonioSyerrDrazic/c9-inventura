class DropKorisnik < ActiveRecord::Migration
  def change
    drop_table :korisniks
  end
end
