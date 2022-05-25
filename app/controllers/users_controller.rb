class UsersController < ApplicationController
  before_action :set_user, only: %i[ edit update show ]

  def index
    @users = User.page(params[:page])
  end

  def show
    @articles = @user.articles.page(params[:page]).order('created_at')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "Welcome to the Basic Blog #{ @user.username }. You have successfully signed up!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Your account information has been updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
