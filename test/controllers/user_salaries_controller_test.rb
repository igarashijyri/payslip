require "test_helper"

class UserSalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_salary = user_salaries(:one)
  end

  test "should get index" do
    get user_salaries_url
    assert_response :success
  end

  test "should get new" do
    get new_user_salary_url
    assert_response :success
  end

  test "should create user_salary" do
    assert_difference("UserSalary.count") do
      post user_salaries_url, params: { user_salary: { deduction: @user_salary.deduction, health_insurance_fee: @user_salary.health_insurance_fee, late_night_overtime_pay: @user_salary.late_night_overtime_pay, month_total_salary: @user_salary.month_total_salary, net_salary: @user_salary.net_salary, overtime_pay: @user_salary.overtime_pay, residential_tax: @user_salary.residential_tax, transportation_expense: @user_salary.transportation_expense, welfare_pension: @user_salary.welfare_pension } }
    end

    assert_redirected_to user_salary_url(UserSalary.last)
  end

  test "should show user_salary" do
    get user_salary_url(@user_salary)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_salary_url(@user_salary)
    assert_response :success
  end

  test "should update user_salary" do
    patch user_salary_url(@user_salary), params: { user_salary: { deduction: @user_salary.deduction, health_insurance_fee: @user_salary.health_insurance_fee, late_night_overtime_pay: @user_salary.late_night_overtime_pay, month_total_salary: @user_salary.month_total_salary, net_salary: @user_salary.net_salary, overtime_pay: @user_salary.overtime_pay, residential_tax: @user_salary.residential_tax, transportation_expense: @user_salary.transportation_expense, welfare_pension: @user_salary.welfare_pension } }
    assert_redirected_to user_salary_url(@user_salary)
  end

  test "should destroy user_salary" do
    assert_difference("UserSalary.count", -1) do
      delete user_salary_url(@user_salary)
    end

    assert_redirected_to user_salaries_url
  end
end
