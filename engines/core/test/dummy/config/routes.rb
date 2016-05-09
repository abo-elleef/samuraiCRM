Rails.application.routes.draw do

  mount Core::Engine => "/core"
  mount Contacts::Engine => "/contacts"
end
