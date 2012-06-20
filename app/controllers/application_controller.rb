class ApplicationController < ActionController::Base
  protect_from_forgery
  include Mobylette::RespondToMobileRequests 

  mobylette_config do |config|
    config[:skip_xhr_requests] = false 
  end

 private 

 def not_authenticated
   redirect_to login_url, :alert => "Please login so you can drink and rate tasty beers." 
 end

end
