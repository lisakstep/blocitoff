class ItemsController < ApplicationController
 
  def new
  end

  def create
    @list = current_user.list
    @item = @list.items.build(item_params)
    @item.save!
    redirect_to @list
  end

  private

  def item_params
    params.require(:item).permit(:content)
  end

end