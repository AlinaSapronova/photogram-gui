Rails.application.routes.draw do
  get("/", {:controller => "user", :action => "home"})
  get("/users", {:controller => "user", :action => "all_users"})
  get("/users/user_name", {:controller => "user", :action => "username"})

end
