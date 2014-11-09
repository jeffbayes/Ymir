class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD

  def index
  end

  def testmap
  end
=======
  
  def after_sign_in_path_for(resource)
    '/campaigns'
  end

>>>>>>> 909f36aa62434e360679ca0dcb8da19d38f28ad8
end
