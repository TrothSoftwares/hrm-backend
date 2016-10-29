class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user_from_token!
  skip_before_action :authenticate_user!

  respond_to :json

  def create
    
    @user = User.create(:email => params[:email], :password =>  params[:password], :password_confirmation =>  params[:password_confirmation], :firstname => params[:firstname] ,   :middlename => params[:middlename] , :lastname => params[:lastname] , :contact => params[:contact] , :designation => params[:designation] , :dateofjoin => params[:dateofjoin] , :department => params[:department], :location => params[:location] , :gender => params[:gender]  ,:maritialstatus => params[:maritialstatus] , :dob => params[:dob] ,  :temporaryaddress =>params[:temporaryaddress] , :permenantaddress =>params[:permenantaddress] ,:role =>params[:role]   )
    logger.info  @user.errors.full_messages
     attendance = Attendance.create(user: @user )
     attendance.save






    render json: @user, status: :created, location: @user
  end


  def index
    @user = User.all
    render json: @user, status: :ok
  end


  def show
    render json: @user
  end



  def update
    # logger.info params.inspect
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.fetch(:user, {}).permit!
  end

end
