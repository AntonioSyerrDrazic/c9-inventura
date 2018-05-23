class CreateLokacijas < ActiveRecord::Migration
  def change
    create_table :lokacijas do |t|
      t.integer :id_lokacije
      t.string :grad
      t.string :drzava
      t.string :adresa
      t.integer :post_br
      t.string :naziv_prostora

      t.timestamps null: false
    end
  end
end
