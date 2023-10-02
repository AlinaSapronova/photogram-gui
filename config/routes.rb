Rails.application.routes.draw do
  get("/", {:controller => "user", :action => "home"})

end
