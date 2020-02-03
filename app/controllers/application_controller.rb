class ApplicationController < ActionController::API
  include Response

  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end


protected

# Authenticate the user with token based authentication
def authenticate
  authenticate_token || render_unauthorized
end

def authenticate_token
  authenticate_with_http_token do |token, options|
    @current_user = User.find_by(api_key: token)
  end
end

def render_unauthorized(realm = "Application")
  self.headers["WWW-Authenticate"] = %(Token realm="#{realm}")
  render json: 'Bad credentials', status: :unauthorized
end
end
