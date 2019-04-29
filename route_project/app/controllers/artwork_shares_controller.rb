class ArtworkSharesController < ApplicationController
   

    def create
        @artwork_shares = ArtworkShares.new(artwork_shares_params)
        if @artwork_shares.save
            render json: @artwork_shares
        else
            render json: @artwork_shares.errors.ful_messages, status: 422
        end
    end

    def destroy
        @artwork_shares = ArtworkShares.find(params[:id])
        @artwork_shares.destroy
        redirect_to artwork_shares_url(@artwork_shares)
    end

   private
    def artwork_shares_params
        params.require(:artwork_shares).permit(:viewer_id, :artwork_id)
    end
end