class ItemsController < ApplicationController
  before_action :search_item, only: [:index, :search]

  def index
    @items = current_user.items.page(params[:page]).per(10)

  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to items_path
    else
      render :new
    end
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
    @results = @d.result.where(user_id: current_user.id).page(params[:page]).per(10)

  end

  private

  def search_item
    @d = Item.ransack(params[:q])
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
