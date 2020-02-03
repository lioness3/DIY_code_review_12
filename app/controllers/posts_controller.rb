class PostsController < ActionController::API
  TOKEN = "secret"

  before_action :authenticate, except: [ :index ]

  def index
    render plain: "Everyone can see me!"
  end

  def edit
    render plain: "I'm only accessible if you know the password"
  end

  private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        # Compare the tokens in a time-constant manner, to mitigate
        # timing attacks.
        ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
      end
    end
end
