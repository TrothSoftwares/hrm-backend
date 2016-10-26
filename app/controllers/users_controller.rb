class UsersController < ApplicationController

  skip_before_action :authenticate_user_from_token!
  skip_before_action :authenticate_user!

  respond_to :json

  def create
    @user = User.create( :email => params[:email] , :password => params[:password],:password_confirmation =>params[:password_confirmation])
    @user.save
    attendance = Attendance.create(employee: @user )
    attendance.save
    return head :ok
  end


  def index
    @user = User.all
    render json: @user, status: :ok
  end

end
