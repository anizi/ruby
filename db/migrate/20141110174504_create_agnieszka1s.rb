class CreateAgnieszka1s < ActiveRecord::Migration
  def change
    create_table :agnieszka1s do |t|
      t.string :imie
      t.string :nazwisko

      t.timestamps
    end
  end
end
