Rails.application.routes.draw do
  
	
	root "simon#input"
	get "simon/view"
   get "simon/input"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
