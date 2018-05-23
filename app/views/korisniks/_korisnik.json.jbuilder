json.extract! korisnik, :id, :id_korisnika, :username, :password, :ime, :prezime, :email, :broj_telefona, :created_at, :updated_at
json.url korisnik_url(korisnik, format: :json)
