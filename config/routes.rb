Rails.application.routes.draw do

  get 'home/index'

  devise_for :users, controllers: {
                       registrations: :registrations,
                       sessions: :sessions,
                       confirmations: :confirmations,
                       passwords: :passwords
                   }

  root "home#index"

end
