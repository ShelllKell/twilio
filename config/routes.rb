Rails.application.routes.draw do

  root 'welcome#index'
  post '/text' => 'welcome#create_text'

end
