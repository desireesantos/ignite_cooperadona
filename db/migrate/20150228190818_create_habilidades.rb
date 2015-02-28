class CreateHabilidades < ActiveRecord::Migration
  def change
    create_table :habilidades do |t|
      t.integer :pessoa_id
      t.string :nome
      t.integer :nivel

      t.timestamps
    end
  end
end
