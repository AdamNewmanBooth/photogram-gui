Rails.application.routes.draw do
  get("/", {:controller => "users", :action => "index"})

  #Users 
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "view"})
  post("/insert_user", {:controller => "users", :action => "create"})
  post("/update_user/:path_username", {:controller => "users", :action => "update"})
  #Photos
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "view"})
  get("/delete_photo/:path_id", {:controller => "photos", :action => "delete"})
  get("/insert_photo", {:controller => "photos", :action => "create"})
  get("/update_photo/:path_id", {:controller => "photos", :action => "update"})
  post("/add_comment", {:controller => "photos", :action => "comment"})

end
