require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  test "root page loads books page" do
    visit books_url
    assert_selector "h1", text: "Books"
  end
  
  test "creating new book" do
    visit new_book_url

    assert_selector "h1", text: "New Book"

    title = 'This is my test book'
    synopsis = 'synopsis'
    fill_in "book[title]", with: title
    fill_in "book[synopsis]", with: synopsis

    click_on "Create Book"

    assert_text title
  end

  test "go to new book page" do
    visit books_url
    click_on "New Book"
    assert_selector "h1", text: "New Book"
  end

  test "go to movies page" do
    visit books_url
    click_on 'Movies'
    assert_selector "h1", text: "Movies"
  end

end