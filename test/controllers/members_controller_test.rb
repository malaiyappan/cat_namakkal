require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { address: @member.address, bank_account_no: @member.bank_account_no, bank_name: @member.bank_name, branch_name: @member.branch_name, business_enrolment_date: @member.business_enrolment_date, date_of_birth: @member.date_of_birth, father_name: @member.father_name, ifsc_code: @member.ifsc_code, mobile_no: @member.mobile_no, name: @member.name, nominee_date_of_birth: @member.nominee_date_of_birth, nominee_name: @member.nominee_name, nominee_relationship: @member.nominee_relationship, pan_no: @member.pan_no, rbi_cc_op_no: @member.rbi_cc_op_no, rbi_ncop_no: @member.rbi_ncop_no }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { address: @member.address, bank_account_no: @member.bank_account_no, bank_name: @member.bank_name, branch_name: @member.branch_name, business_enrolment_date: @member.business_enrolment_date, date_of_birth: @member.date_of_birth, father_name: @member.father_name, ifsc_code: @member.ifsc_code, mobile_no: @member.mobile_no, name: @member.name, nominee_date_of_birth: @member.nominee_date_of_birth, nominee_name: @member.nominee_name, nominee_relationship: @member.nominee_relationship, pan_no: @member.pan_no, rbi_cc_op_no: @member.rbi_cc_op_no, rbi_ncop_no: @member.rbi_ncop_no }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
