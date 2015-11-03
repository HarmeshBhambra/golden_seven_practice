Rails.application.routes.draw do
  get("/", {:controller => "farmers", :action => "index"})

  get("/farmers/new", {:controller => "farmers", :action => "new_form"})
  get("/create_farmer", {:controller => "farmers", :action => "create_row"})

  get("/farmers", {:controller => "farmers", :action => "availability"})
  get("/farmers/:id", {:controller => "farmers", :action => "show"})

  get("/farmers/:id/edit", {:controller => "farmers", :action => "edit_form"})
  get("/update_farmer/:id", {:controller => "farmers", :action => "update_row"})
end
