CacCom::Application.routes.draw do
	root :to => "pages#home"

  
	match '/domains' => 'pages#portfolio'
	match '/services' => 'pages#home'
	match '/contact' => 'pages#contact'
	match '/clients' => 'pages#clients'
	match '/team' => 'pages#team'
	match '/repositories' => 'pages#repos'
	match '/legal' => 'pages#legal'
	match '/blog' => 'pages#blog'
	match '/user/login' => 'pages#login'
	match '/user/forgot_password' => 'pages#forgot_password'

	resources :pages

end

