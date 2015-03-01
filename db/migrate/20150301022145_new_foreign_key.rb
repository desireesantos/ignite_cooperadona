class NewForeignKey < ActiveRecord::Migration
  def change
    add_column :habilidades, :pessoa_ensina_id, :integer
    rename_column :habilidades, :pessoa_id, :pessoa_aprende_id
  end
end
