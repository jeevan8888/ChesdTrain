Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  get "signIn" => "auth#signIn", as: :signIn
  get "signUp" => "auth#signUp", as: :signUp

  get "train" => "train#index", as: :train
  # namespace :train do
  #   namespace :chested do
  #     get 'step1', to: 'step1#index', as: :step1
  #     post 'step1', to: 'step1#create', as: :step1
  #     get 'step2', to: 'step2#index', as: :step2
  #   end
  # end
  get "train/chested/step1" => "train#c_step1", as: :train_c_step1
  post "train/chested/step1" => "train#c_step1_save", as: :train_c_step1_save

  get "train/chested/step2" => "train#c_step2", as: :train_c_step2
  post "train/chested/step2" => "train#c_step2_save", as: :train_c_step2_save

  get "train/chested/step3" => "train#c_step3", as: :train_c_step3
  post "train/chested/step3" => "train#c_step3_save", as: :train_c_step3_save

  get "train/chested/step4" => "train#c_step4", as: :train_c_step4
  post "train/chested/step4" => "train#c_step4_save", as: :train_c_step4_save

  get "train/potluck/step1" => "train#p_step1", as: :train_p_step1
  post "train/potluck/step1" => "train#p_step1_save", as: :train_p_step1_save

  get "train/potluck/step2" => "train#p_step2", as: :train_p_step2
  post "train/potluck/step2" => "train#p_step2_save", as: :train_p_step2_save

  get "train/potluck/step3" => "train#p_step3", as: :train_p_step3
  post "train/potluck/step3" => "train#p_step3_save", as: :train_p_step3_save
  
  get "train/potluck/step4" => "train#p_step4", as: :train_p_step4
  post "train/potluck/step4" => "train#p_step4_save", as: :train_p_step4_save

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
