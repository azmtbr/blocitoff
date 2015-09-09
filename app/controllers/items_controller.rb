class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end


  def create
     @item = current_user.items.build(item_params)

     if @item.save
        flash[:notice] = "Item was saved."
        redirect_to current_user
     else
        flash[:error] = "There was an error saving the item. Please try again."
        redirect_to current_user
     end
  end


   private

   def item_params
     params.require(:item).permit(:name)
   end
end