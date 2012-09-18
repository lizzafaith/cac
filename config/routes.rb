
Cac2::Application.routes.draw do

  root :to => 'welcome#home'
  get 'about', :to => 'welcome#about'
  get 'contact', :to => 'welcome#contact'
  get 'portfolio', :to => 'welcome#portfolio'
  get 'services', :to => 'welcome#services'
  get 'team', :to => 'welcome#team'
  
  get 'technology', :to => 'welcome#technology', :as => :technology
  get 'privacy-policy', :to => 'welcome#privacy', :as => :privacy

end
