class BooksControllerTest < ActionController::TestCase
  test 'Book create' do
    params = {
      title: "Un Libro",
      author: "Jane Doe",
      status: 'delivered',
      created_at: DateTime.now,
      updated_at: DateTime.now
    }

    assert_nil Book.find_by(title: "Un Libro")
    assert_response :success
  end
end