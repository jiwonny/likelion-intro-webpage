require 'test_helper'

class MemonliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memonly = memonlies(:one)
  end

  test "should get index" do
    get memonlies_url
    assert_response :success
  end

  test "should get new" do
    get new_memonly_url
    assert_response :success
  end

  test "should create memonly" do
    assert_difference('Memonly.count') do
      post memonlies_url, params: { memonly: { content: @memonly.content, date: @memonly.date, title: @memonly.title, writer: @memonly.writer } }
    end

    assert_redirected_to memonly_url(Memonly.last)
  end

  test "should show memonly" do
    get memonly_url(@memonly)
    assert_response :success
  end

  test "should get edit" do
    get edit_memonly_url(@memonly)
    assert_response :success
  end

  test "should update memonly" do
    patch memonly_url(@memonly), params: { memonly: { content: @memonly.content, date: @memonly.date, title: @memonly.title, writer: @memonly.writer } }
    assert_redirected_to memonly_url(@memonly)
  end

  test "should destroy memonly" do
    assert_difference('Memonly.count', -1) do
      delete memonly_url(@memonly)
    end

    assert_redirected_to memonlies_url
  end
end
