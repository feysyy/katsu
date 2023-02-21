class CollectionsController < ApplicationController 
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def index
    @collections = Collection.where(user_id: current_user.id) if user_signed_in?
  end

  def show
  end

  def new
    @collection = Collection.new
  end

  def create
    collection = Collection.new(collection_params)
    collection.update(user_id: current_user.id)

    if collection.save
      redirect_to collections_path
    else
      redirect_to :new
    end
  end

  def edit
  end

  def update
    if @collection.update(collection_params)
      redirect_to collection_path
    else  
      redirect_to :edit
    end
  end

  def destroy
    @collection.destroy

    redirect_to collection_path
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :user_id)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end

end