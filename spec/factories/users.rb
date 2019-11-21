FactoryBot.define do
  factory :user do
    nome { FFaker::Name.first_name }
    cargo { %i[medico enfermeiro nutricionista fisioterapeuta].sample }
    documento { FFaker::Random.rand(1..99) }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
    password_confirmation { password }
  end
end
