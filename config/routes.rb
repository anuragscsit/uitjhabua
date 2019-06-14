Rails.application.routes.draw do
  resources :fees_structures

  resources :faculties
  get 'departments/faculty'
  resources :notices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'
get 'home/developers'

get 'departments/index'
get 'departments/cse'
get 'departments/mechanical'
get 'departments/sci_humanity'
get 'home/visionAndMission'
get 'home/aboutUs'
get 'home/principalMassege'
get 'home/administration'
get 'home/committee'
get 'home/photoGallery'
get 'admission/BTech'
get 'admission/procedure'
get 'admission/fees_structure'

end
