class LaundriesController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        laundry = Laundry.all 
        render json: laundry
    end

    def show 
        #find laundry using the id
        #send a json response using that laundry object
        laundry = Laundry.find_by(id: params[:id])
        render json: laundry
    end

    def create
        laundry = Laundry.create(laundry_params)
        render json: laundry, status: :created
      end

      private
 
      def laundry_params
        params.permit(:title,:variety, :price)
      end


end

