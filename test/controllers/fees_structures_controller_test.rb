require 'test_helper'

class FeesStructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fees_structure = fees_structures(:one)
  end

  test "should get index" do
    get fees_structures_url
    assert_response :success
  end

  test "should get new" do
    get new_fees_structure_url
    assert_response :success
  end

  test "should create fees_structure" do
    assert_difference('FeesStructure.count') do
      post fees_structures_url, params: { fees_structure: { feesinfo: @fees_structure.feesinfo, program: @fees_structure.program, session: @fees_structure.session, year: @fees_structure.year } }
    end

    assert_redirected_to fees_structure_url(FeesStructure.last)
  end

  test "should show fees_structure" do
    get fees_structure_url(@fees_structure)
    assert_response :success
  end

  test "should get edit" do
    get edit_fees_structure_url(@fees_structure)
    assert_response :success
  end

  test "should update fees_structure" do
    patch fees_structure_url(@fees_structure), params: { fees_structure: { feesinfo: @fees_structure.feesinfo, program: @fees_structure.program, session: @fees_structure.session, year: @fees_structure.year } }
    assert_redirected_to fees_structure_url(@fees_structure)
  end

  test "should destroy fees_structure" do
    assert_difference('FeesStructure.count', -1) do
      delete fees_structure_url(@fees_structure)
    end

    assert_redirected_to fees_structures_url
  end
end
