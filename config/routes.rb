ActionController::Routing::Routes.draw do |map|
  # Add your own custom routes here.
  # The priority is based upon order of creation: first created -> highest priority.
  
  # Here's a sample route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # You can have the root of your site routed by hooking up '' 
  # -- just remember to delete public/index.html.
  map.connect '', :controller => 'main', :action => 'dashboard'

  # Map 'project/:id' to the project dashboard view.
  map.connect 'project/:id', :controller => 'main', :action => 'project_dashboard'
  
  # Map 'project/:id/:controller' for controllers that require
  # a project to be selected.
  map.connect 'project/:project_id/:controller/:action/:id'
  
  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'.
  map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Install the default route as the lowest priority.
  map.connect ':controller/:action/:id'
end
