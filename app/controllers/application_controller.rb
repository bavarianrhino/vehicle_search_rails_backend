class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, 'c4r_s3cr3t', 'HS256')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'c4r_s3cr3t')[0]
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        # binding.pry
        if decoded_token
            @user = User.find(decoded_token['user_id'])
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { error: "User must be logged in" }, status: :unauthorized unless logged_in?
    end
end
