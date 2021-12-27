Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do

  end

  #管理者
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }
  #顧客用
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  # 顧客側設定
    root "homes#top"
    get "about" => "homes#about"

end
