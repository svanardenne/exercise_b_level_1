require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'should get id' do
    get id_path
    assert_response :success
  end

  test 'should get user' do
    get 'http://localhost:3000/3d8b3ed5-fb80-43d2-a719-4b9c6941980f'
    assert_response :success
  end

  test 'should create user' do
    assert_difference 'User.count' do
      post create_user_path
    end
    assert_response :success
  end
end
