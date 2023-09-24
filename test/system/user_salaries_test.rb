require "application_system_test_case"

class UserSalariesTest < ApplicationSystemTestCase
  setup do
    @user_salary = user_salaries(:one)
  end

  test "visiting the index" do
    visit user_salaries_url
    assert_selector "h1", text: "User salaries"
  end

  test "should create user salary" do
    visit user_salaries_url
    click_on "New user salary"

    fill_in "Deduction", with: @user_salary.deduction
    fill_in "Health insurance fee", with: @user_salary.health_insurance_fee
    fill_in "Late night overtime pay", with: @user_salary.late_night_overtime_pay
    fill_in "Month total salary", with: @user_salary.month_total_salary
    fill_in "Net salary", with: @user_salary.net_salary
    fill_in "Overtime pay", with: @user_salary.overtime_pay
    fill_in "Residential tax", with: @user_salary.residential_tax
    fill_in "Transportation expense", with: @user_salary.transportation_expense
    fill_in "Welfare pension", with: @user_salary.welfare_pension
    click_on "Create User salary"

    assert_text "User salary was successfully created"
    click_on "Back"
  end

  test "should update User salary" do
    visit user_salary_url(@user_salary)
    click_on "Edit this user salary", match: :first

    fill_in "Deduction", with: @user_salary.deduction
    fill_in "Health insurance fee", with: @user_salary.health_insurance_fee
    fill_in "Late night overtime pay", with: @user_salary.late_night_overtime_pay
    fill_in "Month total salary", with: @user_salary.month_total_salary
    fill_in "Net salary", with: @user_salary.net_salary
    fill_in "Overtime pay", with: @user_salary.overtime_pay
    fill_in "Residential tax", with: @user_salary.residential_tax
    fill_in "Transportation expense", with: @user_salary.transportation_expense
    fill_in "Welfare pension", with: @user_salary.welfare_pension
    click_on "Update User salary"

    assert_text "User salary was successfully updated"
    click_on "Back"
  end

  test "should destroy User salary" do
    visit user_salary_url(@user_salary)
    click_on "Destroy this user salary", match: :first

    assert_text "User salary was successfully destroyed"
  end
end
