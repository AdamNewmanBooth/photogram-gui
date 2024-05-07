Rails.application.routes.draw do
  get("/", {:controller => "users", :action => "index"})

  #Users 
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "view"})

  #Photos
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "view"})
  get("/delete_photo/:path_id", {:controller => "photos", :action => "delete"})
  get("/insert_photo", {:controller => "photos", :action => "create"})
  #get("/edit_photos/:path_id", {:controller => "photos", :action => "view"})

end
