class UsersController < ApplicationController

 def index
  @users = User.search(params[:first_name])

 end

 def new
 end

 def create
  @user = User.new(params[:client])
  @user.save

  redirect_to user_path(@user)
 end


 def show
  @client = Client.find(params[:id])
 end

 def edit
  @user = User.find(params[:id])
 end

 def update
  @user = Client.find(params[:id])
  @user.update(params[:user])

  redirect_to user_path(@user)
 end

 def destroy
  @user = User.find(params[:id])
  @user.destroy

  redirect_to user_path
 end

 private

 def user_params
  params.require(:user).permit(:first_name, :last_name)
 end
end
