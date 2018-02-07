class CategoriesController < ApplicationController

  before_action :set_default_response_format
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render :show
    end

  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      render :show
    end
  end

  def delete
    @category = Category.find(params[:id])
    @category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_default_response_format
    request.format = :json
  end
end
