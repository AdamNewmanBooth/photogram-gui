Rails.application.routes.draw do


  #Users 
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "view"})

  #Photos


end
