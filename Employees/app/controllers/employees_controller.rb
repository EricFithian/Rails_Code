class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def show 
    @employee = Employee.find_by(params [:id])
    render 'show.json.jbuilder'
  end
end
