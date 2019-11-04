class Escala < ApplicationRecord
  has_many :interpretacoes, dependent: :destroy
  has_many :parametros, dependent: :destroy
  has_many :registros
  has_many :pacientes, through: :registros
end
