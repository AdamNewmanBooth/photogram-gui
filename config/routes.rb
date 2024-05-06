Rails.application.routes.draw do
  get("/", {:controller => "users", :action => "index"})

  #Users 
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "view"})

  #Photos
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_username", {:controller => "photos", :action => "view"})

end
