class ItemsController < ApplicationController
  def index
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to items_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

   private

  def item_params
    params.require(:item).permit(:name, :image, :introduction)
          .merge(
            type: params['item']['type'].to_i,
            color: params['item']['color'].to_i,
            pattern: params['item']['pattern'].to_i,
            season: params['item']['season'].to_i
            )
  end

end
