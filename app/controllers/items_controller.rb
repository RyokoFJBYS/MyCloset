class ItemsController < ApplicationController
  before_action :set_q, only: [:index, :search]
  
  def index
    @items = Item.all
    
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
  
  def search
    @results = @q.result
  end

  private
   
  def search_item
    @q = Item.ransack(params[:q])
  end
   

  def item_params
    params.require(:item).permit(:name, :image, :introduction)
          .merge(
            type: Type.find(params['item']['type'].to_i),
            color: Color.find(params['item']['color'].to_i),
            pattern: Pattern.find(params['item']['pattern'].to_i),
            season: Season.find(params['item']['season'].to_i)
            )
  end

end
