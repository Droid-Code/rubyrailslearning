Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'product#home'

  get 'product/add_product'

  post 'product/create'

  get 'product/list_product'

  get 'product/delete'

  get 'product/edit'

  patch 'product/update'

  get 'product/show_product'

  post 'product/search_product'

end
