class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new, status: 422
  end
end

private
  def user_params
    params.require(:user).permit(:name, :age)
  end

  def edit
  end

  def update
  end

  def destroy
     @user = User.find(params[:id])
     @user.destroy

     redirect_to user_path, status: :see_other
  end
end
