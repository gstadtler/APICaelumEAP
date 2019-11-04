class Paciente < ApplicationRecord
  validates :cpf, presence: { message: 'Invalid: Field can not be empty.' }
  validates :nome, presence: { message: 'Invalid: Field can not be empty.' }
  belongs_to :user
  has_many :registros
  has_many :escalas, through: :registros
end
