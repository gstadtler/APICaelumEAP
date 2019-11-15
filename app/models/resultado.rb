class Resultado < ApplicationRecord
  belongs_to :registro
  belongs_to :parametro
  belongs_to :resposta
end
