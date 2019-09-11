class EmployeesController < ApplicationController
  def create
    @employee = Employee.create(employee_params)
    @employee.company = Company.find(params[:company_id])
    @employee.save

    redirect_to @employee.company, notice: 'Guardado'
  end

def destroy
  @employee = Employee.find(params[:id])
  @company = @employee.company
  @employee.destroy

  redirect_to @company, alert: 'Empleado Eliminado'
end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email)
  end
end
