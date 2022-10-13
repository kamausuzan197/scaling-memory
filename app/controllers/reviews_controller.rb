class ReviewsController < ApplicationController
  protect_from_forgery with: :null_session

    def index
        review = review.all 
        render json: review
    end

    def show
        review = Review.find_by(id: params[:id])
        if review
          render json: review
        else
          render json: { error: "review not found" }, status: :not_found
        end
      end

      def create
        review = Review.create(review_params)
        render json: review, status: :created
      end

      def update
        review = Review.find_by(id: params[:id])
        if review
          review.update(review_params)
          render json: review
        else
          render json: { error: "review not found" }, status: :not_found
        end
      end

      def destroy
        review = Review.find_by(id: params[:id])
        if review
          review.destroy
          render json: review
        else
          render json: { error: "Review not found" }, status: :not_found
        end
      end

      private
 
      def review_params
        params.permit(:comments,:order_number, :laundry_id, :user_id)
      end


end
