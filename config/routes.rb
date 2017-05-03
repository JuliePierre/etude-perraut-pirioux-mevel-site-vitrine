Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'office', to: 'pages#office', as: 'office'
  get 'foire-aux-questions', to: 'pages#faq', as: 'faq'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'negociation-immobiliere', to: 'pages#negociation', as: 'negociation'
  get 'vente-immobilier', to: 'pages#vente', as: 'vente'
  get 'plan-du-site', to: 'pages#sitemap', as: 'sitemap'
  get 'mentions-légales', to: 'pages#legal', as: 'legal'
  get 'credits', to: 'pages#credits', as: 'credits'

  # Routes des pages expertises dans l'ordre
  get 'expertises/search', to: 'expertises#search', as: 'search'

  # Droit de la famille
  get 'expertises/droit-de-la-famille', to: 'pages#famille', as: 'famille'
  get 'expertises/droit-de-la-famille/union', to: 'pages#union', as: 'union'
  get 'expertises/droit-de-la-famille/divorce', to: 'pages#divorce', as: 'divorce'
  get 'expertises/droit-de-la-famille/succession', to: 'pages#succession', as: 'succession'
  get 'expertises/droit-de-la-famille/donation', to: 'pages#donation', as: 'donation'
  get 'expertises/droit-de-la-famille/testament', to: 'pages#testament', as: 'testament'
  get 'expertises/droit-de-la-famille/adoption', to: 'pages#adoption', as: 'adoption'

  # Droit des affaires
  get 'expertises/droit-des-affaires', to: 'pages#affaires', as: 'affaires'

  get 'expertises/droit-des-affaires/societe-creation', to: 'pages#societe_creation', as: 'societe_creation'
  get 'expertises/droit-des-affaires/societe-transmission', to: 'pages#societe-transmission', as: 'societe_transmission'
  get 'expertises/droit-des-affaires/societe-secretariat', to: 'pages#societe_secretariat', as: 'societe_secretariat'

  get 'expertises/droit-des-affaires/fonds-commerce', to: 'pages#fonds_commerce', as: 'fonds_commerce'
  get 'expertises/droit-des-affaires/bail-commercial', to: 'pages#bail_commercial', as: 'bail_commercial'
  get 'expertises/droit-des-affaires/location-gerance', to: 'pages#location_gerance', as: 'location_gerance'

  # Droit immobilier
  get 'expertises/droit-immobilier', to: 'pages#immobilier', as: 'immobilier'
  get 'expertises/droit-immobilier/acheter', to: 'pages#acheter', as: 'acheter'
  get 'expertises/droit-immobilier/vendre', to: 'pages#vendre', as: 'vendre'

  # Promotion immobilière
  get 'expertises/promotion-immobiliere', to: 'pages#promotion', as: 'promotion'

  # test pour antoine
  get 'expertises/brouillon', to: 'pages#brouillon'

  resources :annonces, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get 'annonces/:id/add_as_favorite', to: 'annonces#add_as_favorite'
  get 'annonces-immobilieres/admin', to: 'annonces#admin_index', as: 'tests'
  get 'annonces-immobilieres/admin/:id', to: 'annonces#admin_show', as: 'test'

  resources :contacts, only: [:new, :create]

end
