class BooksControllerTest < ActionController::TestCase
  test 'get index' do
    get :index
    assert_response :success
  end
end