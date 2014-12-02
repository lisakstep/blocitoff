class ListsController < ApplicationController

  def new
  end

  def create
    @list = List.new(item_params)
    @list.save
    redirect_to @list, notice: 'Your List has been made.'
  end

  def show
    @list = List.find params[:id]
  end

  private

  def item_params
    params.require(:list).permit(:title)
  end

end
