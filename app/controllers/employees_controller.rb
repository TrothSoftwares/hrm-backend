class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :update, :destroy]

  # GET /employees
  def index
    @employees = Employee.all

    render json: @employees
  end

  # GET /employees/1
  def show
    render json: @employee
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)




    if @employee.save
      employeeid = @employee.id # for getting employeeid from saved object

      u = User.new(:email => employee_params[:email], :password =>  employee_params[:pass], :password_confirmation =>  employee_params[:pass], :role =>employee_params[:role] , :employee_id => employeeid )

      u.save

      attendance = Attendance.create(employee: @employee )

      @attendance.save

      # logger.info u.errors.full_messages

      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  def update
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/1
  def destroy
    @employee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_params
      # logger.info params
      params.fetch(:employee, {}).permit!


      # params[:employee].permit!

    end
end
