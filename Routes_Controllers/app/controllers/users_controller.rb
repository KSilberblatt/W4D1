class UsersController < ApplicationController
def index
  render json: User.all
end

def create
  @user = User.new(params[:user].permit(:name, :email))
# replace the `user_attributes_here` with the actual attribute keys
  if @user.save!
    render json: @user
  else
    render json: @user.errors.full_messages, status: :unprocessable_entity
  end
end

def show
  render json: User.find(params[:id])
end

def update
  user = User.find(params[:id])
  user_params = params.require(:user).permit(:name,:email)

  if user.update(user_params)
    render json: user
  else
    render json: user.errors.full_messages
  end

end

def destroy

  user = User.find(params[:id])
  user.destroy
  render json: user

end

end
