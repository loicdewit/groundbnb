class ListingsController < ApplicationController

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @listing = @user.listings.create(listing_params)
    @listing.save
    p @listing
    redirect_to ('/')
  end

  private def listing_params
    params.require(:listing).permit(:name, :description)
  end
end
