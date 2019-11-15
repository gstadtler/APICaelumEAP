class Resposta < ApplicationRecord
  belongs_to :parametro
  has_many :resultados
  has_many :registros, through: :resultados
end
