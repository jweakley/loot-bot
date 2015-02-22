Rails.application.routes.draw do
  resources :raid_boss_loot_items

  resources :raid_boss_item_drops

  resources :raid_boss_kills

  resources :raid_bosses

  resources :raid_members

  resources :raids

  devise_for :users
  root to: "raids#index"
end
