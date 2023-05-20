Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  constraints(:host => /^www\.rorlee\.com$/) do
		match "*path", to: redirect(subdomain: ''), via: [:get, :post]
	end
  
  root 'welcome#index'
  
end
