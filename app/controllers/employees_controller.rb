class EmployeesController < ApplicationController

def index
    @employees = Employee.all
end

def new
    @employee = Employee.new
    @buttonName = "ADD EMPLOYEE"
end

def show
    @employee = Employee.find(params[:id])
end

def create
    @employee = Employee.new(employee_params)
 
  if @employee.save
    redirect_to @employee
  else
    render 'new'
  end
end

def edit
  @employee = Employee.find(params[:id])
  @buttonName = "UPDATE EMPLOYEE"
end

def update
  @employee = Employee.find(params[:id])

  if @employee.update(employee_params)
    redirect_to @employee
  else
    render 'edit'
  end

end

def destroy
  @employee = Employee.find(params[:id])
  @employee.destroy
  
  redirect_to employees_path
end

private
  def employee_params
    params.require(:employee).permit(:name, :age, :gender, :designation)
  end
end