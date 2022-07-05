class CategoriesController < ApplicationController

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

    def category_params
      params.require(:category).permit(:name)
    end

end
