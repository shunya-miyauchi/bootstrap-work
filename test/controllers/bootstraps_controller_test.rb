require 'test_helper'

class BootstrapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bootstrap = bootstraps(:one)
  end

  test "should get index" do
    get bootstraps_url
    assert_response :success
  end

  test "should get new" do
    get new_bootstrap_url
    assert_response :success
  end

  test "should create bootstrap" do
    assert_difference('Bootstrap.count') do
      post bootstraps_url, params: { bootstrap: { title: @bootstrap.title } }
    end

    assert_redirected_to bootstrap_url(Bootstrap.last)
  end

  test "should show bootstrap" do
    get bootstrap_url(@bootstrap)
    assert_response :success
  end

  test "should get edit" do
    get edit_bootstrap_url(@bootstrap)
    assert_response :success
  end

  test "should update bootstrap" do
    patch bootstrap_url(@bootstrap), params: { bootstrap: { title: @bootstrap.title } }
    assert_redirected_to bootstrap_url(@bootstrap)
  end

  test "should destroy bootstrap" do
    assert_difference('Bootstrap.count', -1) do
      delete bootstrap_url(@bootstrap)
    end

    assert_redirected_to bootstraps_url
  end
end
