class Escala < ApplicationRecord
  has_many :interpretacoes, dependent: :destroy
end
