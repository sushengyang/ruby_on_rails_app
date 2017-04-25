require 'test_helper'

class LendingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lending = lendings(:one)
  end

  test "should get index" do
    get lendings_url
    assert_response :success
  end

  test "should get new" do
    get new_lending_url
    assert_response :success
  end

  test "should create lending" do
    assert_difference('Lending.count') do
      post lendings_url, params: { lending: { Appraisal_Date: @lending.Appraisal_Date, Assistant: @lending.Assistant, Create_Date: @lending.Create_Date, Creator: @lending.Creator, Email: @lending.Email, Inspection_Date: @lending.Inspection_Date, Mailing_Address: @lending.Mailing_Address, Manager: @lending.Manager, Name: @lending.Name, NickName: @lending.NickName, Open_Date: @lending.Open_Date, Passport: @lending.Passport, Phone: @lending.Phone, Prelim_Date: @lending.Prelim_Date, SSN: @lending.SSN, Visa: @lending.Visa } }
    end

    assert_redirected_to lending_url(Lending.last)
  end

  test "should show lending" do
    get lending_url(@lending)
    assert_response :success
  end

  test "should get edit" do
    get edit_lending_url(@lending)
    assert_response :success
  end

  test "should update lending" do
    patch lending_url(@lending), params: { lending: { Appraisal_Date: @lending.Appraisal_Date, Assistant: @lending.Assistant, Create_Date: @lending.Create_Date, Creator: @lending.Creator, Email: @lending.Email, Inspection_Date: @lending.Inspection_Date, Mailing_Address: @lending.Mailing_Address, Manager: @lending.Manager, Name: @lending.Name, NickName: @lending.NickName, Open_Date: @lending.Open_Date, Passport: @lending.Passport, Phone: @lending.Phone, Prelim_Date: @lending.Prelim_Date, SSN: @lending.SSN, Visa: @lending.Visa } }
    assert_redirected_to lending_url(@lending)
  end

  test "should destroy lending" do
    assert_difference('Lending.count', -1) do
      delete lending_url(@lending)
    end

    assert_redirected_to lendings_url
  end
end
