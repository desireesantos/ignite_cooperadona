class Habilidade < ActiveRecord::Base
  belongs_to :pessoa_aprende, class_name: 'Pessoa'
  belongs_to :pessoa_ensina, class_name: 'Pessoa'
end
