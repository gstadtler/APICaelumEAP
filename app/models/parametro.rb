class Parametro < ApplicationRecord
  belongs_to :escala
  has_many :respostas
  has_many :resultados
  has_many :registros, through: :resultados
end
