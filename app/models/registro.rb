class Registro < ApplicationRecord
  belongs_to :paciente
  belongs_to :escala
  has_many :parametros
end
