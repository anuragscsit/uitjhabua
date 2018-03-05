Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'
get 'home/developers'

get 'departments/index'
get 'departments/cse'
get 'departments/mechanical'
get 'departments/sci_humanity'
end
