require 'test_helper'
 
class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "save data?" do
    book = Book.new
    assert !book.save
  end
end