class Contato < ActiveRecord::Migration
  def change
    add_column :pessoas, :email, :string  
  end
end
