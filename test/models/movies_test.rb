require 'test_helper'

class MoviesTest < ActiveSupport::TestCase
  def setup
    @movie = Movie.new
  end

  test 'movie with a title should be valid' do
    @movie = Movie.new title: 'test', synopsis: 'test'
    assert @movie.valid?
  end

  test 'movie without a title and synopsis should not be valid' do
    @movie = Movie.new 
    assert_not @movie.valid?
  end
end
