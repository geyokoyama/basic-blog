class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update ]
  before_action :require_admin, except: %i[ index show ]

  def index
    @categories = Category.page(params[:page]).order('created_at')
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
    @articles = @category.articles.page(params[:page]).order('created_at')
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to @category, notice: "The category has been updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def require_admin
      unless logged_in? && current_user.admin?
        redirect_to categories_url, alert: "Only admins can perform this action"
      end
    end

    def category_params
      params.require(:category).permit(:name)
    end

end
