class UserSalariesController < ApplicationController
  before_action :set_user_salary, only: %i[ show edit update destroy ]

  def index
    @user_salaries = UserSalary.all
  end

  def show
  end

  def new
    @user_salary = UserSalary.new
  end

  def edit
  end

  def create
    @user_salary = UserSalary.new(user_salary_params)

    respond_to do |format|
      if @user_salary.save
        format.html { redirect_to user_salary_url(@user_salary), notice: "User salary was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user_salary.update(user_salary_params)
        format.html { redirect_to user_salary_url(@user_salary), notice: "User salary was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_salary.destroy

    respond_to do |format|
      format.html { redirect_to user_salaries_url, notice: "User salary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_user_salary
      @user_salary = UserSalary.find(params[:id])
    end

    def user_salary_params
      params.require(:user_salary).permit(:month_total_salary, :deduction, :net_salary, :welfare_pension, :transportation_expense, :residential_tax, :health_insurance_fee, :overtime_pay, :late_night_overtime_pay)
    end
end
