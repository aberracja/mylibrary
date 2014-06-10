require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "is invalid without title" do
    book = Book.new(title: "", author: "", description: "")
    book.title = nil
    assert_equal(false, book.valid?)
  end
end
