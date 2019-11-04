class Parametro < ApplicationRecord
  belongs_to :escala
  belongs_to :registro
  has_many :respostas
end
