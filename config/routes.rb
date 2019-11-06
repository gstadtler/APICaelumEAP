Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      resources :pacientes do
        resources :registros
      end
      resources :escalas do
        resources :interpretacoes
        resources :parametros do
          resources :respostas
        end
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
