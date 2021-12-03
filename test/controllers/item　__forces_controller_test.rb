require 'test_helper'

class Item　ForcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item　__force = item　__forces(:one)
  end

  test "should get index" do
    get item　__forces_url
    assert_response :success
  end

  test "should get new" do
    get new_item　__force_url
    assert_response :success
  end

  test "should create item　__force" do
    assert_difference('Item　Force.count') do
      post item　__forces_url, params: { item　__force: {  } }
    end

    assert_redirected_to item　__force_url(Item　Force.last)
  end

  test "should show item　__force" do
    get item　__force_url(@item　__force)
    assert_response :success
  end

  test "should get edit" do
    get edit_item　__force_url(@item　__force)
    assert_response :success
  end

  test "should update item　__force" do
    patch item　__force_url(@item　__force), params: { item　__force: {  } }
    assert_redirected_to item　__force_url(@item　__force)
  end

  test "should destroy item　__force" do
    assert_difference('Item　Force.count', -1) do
      delete item　__force_url(@item　__force)
    end

    assert_redirected_to item　__forces_url
  end
end
