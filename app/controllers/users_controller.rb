class UsersController < ApplicationController
  protect_from_forgery with: :null_session

    def show
        user =User.find_by(id: params[:id])
        if user
          render json: user
        else
          render json: { error: "users not found" }, status: :not_found
        end
      end 

      def create
        user = User.create(user_params) 
        render json: user, status: :created
      end

      private
 
      def user_params
        params.permit(:name,:password)
      end

end
