ActionDispatch::Routing::Mapper.class_eval do
  protected
  
  def devise_oauth2(mapping, controllers)
    scope :controller => controllers[:sessions], :as => :session do
      get  :create,  :path => mapping.path_names[:oauth2], :as => "oauth2"
    end
  end
end
