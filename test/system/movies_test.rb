require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  test "creating new movie" do
    visit new_movie_url

    assert_selector "h1", text: "New Movie"

    title = 'This is my test movie'
    synopsis = 'synopsis'
    fill_in "movie[title]", with: title
    fill_in "movie[synopsis]", with: synopsis

    click_on "Create Movie"

    assert_text title
    assert_text synopsis
  end

  test "go to new movie page" do
    visit movies_url
    click_on "New Movie"
    assert_selector "h1", text: "New Movie"
  end

  test "go to books page" do
    visit movies_url
    click_on 'Books'
    assert_selector "h1", text: "Books"
  end

end