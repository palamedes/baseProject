Rails.application.routes.draw do

  devise_for :users,
             controllers: {
                 registrations:       "users/registrations",
                 sessions:            "users/sessions",
                 confirmations:       "users/confirmations",
                 passwords:           "users/passwords",
                 unlocks:             "users/unlocks",
                 omniauth_callbacks:  "users/omniauth_callbacks"
             },
             path_names: {
                 sign_in:       "login",
                 sign_out:      "logout",
                 password:      "secret",
                 confirmation:  "verification",
                 unlock:        "unblock",
                 registration:  "register",
                 sign_up:       "signup"
             }

  root "home#index"

end
