class ItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to user_session_path, notice: "Item was successfully added."
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
    end

  end

  def destroy
    @item = current_user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "To-do Complete!"
    else
      flash[:error] = "Error removing item, please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

end
