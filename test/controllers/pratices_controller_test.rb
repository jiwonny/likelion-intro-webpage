require 'test_helper'

class PraticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pratice = pratices(:one)
  end

  test "should get index" do
    get pratices_url
    assert_response :success
  end

  test "should get new" do
    get new_pratice_url
    assert_response :success
  end

  test "should create pratice" do
    assert_difference('Pratice.count') do
      post pratices_url, params: { pratice: { name: @pratice.name } }
    end

    assert_redirected_to pratice_url(Pratice.last)
  end

  test "should show pratice" do
    get pratice_url(@pratice)
    assert_response :success
  end

  test "should get edit" do
    get edit_pratice_url(@pratice)
    assert_response :success
  end

  test "should update pratice" do
    patch pratice_url(@pratice), params: { pratice: { name: @pratice.name } }
    assert_redirected_to pratice_url(@pratice)
  end

  test "should destroy pratice" do
    assert_difference('Pratice.count', -1) do
      delete pratice_url(@pratice)
    end

    assert_redirected_to pratices_url
  end
end
