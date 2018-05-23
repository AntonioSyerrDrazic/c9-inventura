json.extract! inventar, :id, :id_inventara, :naziv_inventara, :kolicina, :fk_sifra_lokacije, :fk_sifra_vrste_inventara, :created_at, :updated_at
json.url inventar_url(inventar, format: :json)
