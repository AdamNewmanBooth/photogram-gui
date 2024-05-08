Rails.application.routes.draw do
  get("/", {:controller => "users", :action => "index"})

  #Users 
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "view"})
  get("/insert_user", {:controller => "users", :action => "create"})
  get("/update_user/:path_id", {:controller => "users", :action => "update"})
  #Photos
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "view"})
  get("/delete_photo/:path_id", {:controller => "photos", :action => "delete"})
  get("/insert_photo", {:controller => "photos", :action => "create"})
  get("/update_photo/:path_id", {:controller => "photos", :action => "update"})
  get("/add_comment", {:controller => "photos", :action => "comment"})

end
