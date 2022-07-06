class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show ]

  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: "Successfully created a new category called #{@category.name}!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end
