class Pessoa < ActiveRecord::Base
  has_many :habilidades_aprender, class_name: "Habilidade", foreign_key: :pessoa_aprende_id, :dependent => :destroy
  has_many :habilidades_ensinar, class_name: "Habilidade", foreign_key: :pessoa_ensina_id, :dependent => :destroy
end
