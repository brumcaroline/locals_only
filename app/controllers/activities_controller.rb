class ActivitiesController < ApplicationController
  def index
    # @activities = Activity.all
    # Se a gente quiser mostrar todas as activites, tem que fazer um if pra essa lógica funcionar.
    @activities = Activity.where(category: params[:category])
  end

    def show
        @activity = Activity.find(params[:id])
        @item = WishlistItem.new
        @user = current_user
        # @wishlists = Wishlist.all.order(:title)
    end
end
