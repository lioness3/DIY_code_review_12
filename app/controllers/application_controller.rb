class ApplicationController < ActionController::API
  inclide Response
  rescue_from ActiveRecord::RecordNotFound do |exception|
  json_response({ message: exception.message }, :not_found)
end
end
