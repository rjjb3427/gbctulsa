Gbctulsa::Application.routes.draw do
  get "site/index"
	match "/" => "site#index"

  get "about/index"
	match "/about" => "about#index"

	get "about/leadership"
	get "about/pastors"
	get "about/doctrine"
	match "about/bylaws" => "about#bylaws_preamble"
	match "about/bylaws/article-i-name" => "about#bylaws_article_one"
	match "about/bylaws/article-ii-purpose-and-covenant" => "about#bylaws_article_two"
	match "about/bylaws/article-iii-membership" => "about#bylaws_article_three"
	match "about/bylaws/article-iv-elders" => "about#bylaws_article_four"
	match "about/bylaws/article-v-deacons" => "about#bylaws_article_five"
	match "about/bylaws/article-vi-corporate-officers" => "about#bylaws_article_six"
	match "about/bylaws/article-vii-meetings" => "about#bylaws_article_seven"
	match "about/bylaws/article-viii-amendments" => "about#bylaws_article_eight"
	match "about/bylaws/article-ix-ordinances" => "about#bylaws_article_nine"
	match "about/bylaws/article-x-ordination" => "about#bylaws_article_ten"

  get "ministries/index"
	match "/ministries" => "ministries#index"
	match "ministries/biblical-counseling" => "ministries#biblical_counseling"
	match "ministries/men-of-grace" => "ministries#men_of_grace"
	match "ministries/women-of-grace" => "ministries#women_of_grace"
	match "ministries/adult-bible-class" => "ministries#adult_bible_class"
	match "ministries/youth-of-grace" => "ministries#youth_of_grace"
	match "ministries/sunday-school" => "ministries#sunday_school"
	match "ministries/well-versed-kids" => "ministries#well_versed_kids"
	match "ministries/questions-of-grace" => "ministries#questions_of_grace"
	match "ministries/homeschoolers-of-grace" => "ministries#homeschoolers_of_grace"

  get "sermons/index"
	match "/sermons" => "sermons#index"

  get "links/index"
	match "/links" => "links#index"

  get "contact/index"
	match "/contact" => "contact#index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
