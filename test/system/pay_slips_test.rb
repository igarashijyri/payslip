require "application_system_test_case"

class PaySlipsTest < ApplicationSystemTestCase
  setup do
    @pay_slip = pay_slips(:one)
  end

  test "visiting the index" do
    visit pay_slips_url
    assert_selector "h1", text: "Pay slips"
  end

  test "should create pay slip" do
    visit pay_slips_url
    click_on "New pay slip"

    click_on "Create Pay slip"

    assert_text "Pay slip was successfully created"
    click_on "Back"
  end

  test "should update Pay slip" do
    visit pay_slip_url(@pay_slip)
    click_on "Edit this pay slip", match: :first

    click_on "Update Pay slip"

    assert_text "Pay slip was successfully updated"
    click_on "Back"
  end

  test "should destroy Pay slip" do
    visit pay_slip_url(@pay_slip)
    click_on "Destroy this pay slip", match: :first

    assert_text "Pay slip was successfully destroyed"
  end
end
