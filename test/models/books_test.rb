require 'test_helper'

class BooksTest < ActiveSupport::TestCase
  
  def setup
    @book = Book.new
  end

  test 'book with a title should be valid' do
    @book = Book.new title: 'test', synopsis: 'test'
    assert @book.valid?
  end

  test 'book without a title and synopsis should not be valid' do
    @book = Book.new 
    assert_not @book.valid?
  end


end
