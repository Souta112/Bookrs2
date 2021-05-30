class UsersController < ApplicationController
  def show
    @username = current_user
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id: @user.id)
  end

  def index
    @book = Book.new
    @users = User.all
    @username = current_user
  end

  def edit
    @user = User.find(params[:id])
    unless @user.id == current_user.id
    redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       flash[:notice] = "You have updated user successfully"
       redirect_to user_path(@user.id)
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end

