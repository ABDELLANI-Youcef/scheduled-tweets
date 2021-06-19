require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get delete' do
    get sessions_delete_url
    assert_response :success
  end
end
