Rails.application.routes.draw do
  root 'pages#index'#контроллер это pages, решетка разделитель и индекс это метод контроллера

  #документ
  get 'conference', to: 'pages#conference'
  post 'conference', to: 'pages#create'
  get 'conference/download', to: 'pages#download', as: 'download_document'
  
  get 'add_student', to: 'pages#add_student'
  get 'registration', to: 'users#new', as: :register
  post 'registration', to: 'users#create'
  get    "/login",        to: "users#login"
  post   "/login",        to: "users#authenticate"
  get    "/profile",      to: "users#profile"
  delete "/logout",   to: "users#logout"

  get 'accounts', to: 'pages#accounts'
  get 'contacts', to: 'pages#contacts'

  get  "import_students", to: "pages#import_students"
  post "import_students", to: "pages#import_students_create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
