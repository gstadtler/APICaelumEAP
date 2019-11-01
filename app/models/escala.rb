class Escala < ApplicationRecord
  has_many :interpretacoes, dependent: :destroy
  has_many :parametros, dependent: :destroy
end
