class Parametro < ApplicationRecord
  belongs_to :escalas, class_name: 'Escala', foreign_key: 'escalas_id'
end
