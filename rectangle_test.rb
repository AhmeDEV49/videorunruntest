require 'minitest/autorun'
load 'rectangle'

class RectangleTest < Minitest::Test
  def test_with_only_one_argv
    actual = %x|./rectangle 3|
    expected = "You must enter two valid arguments!"
    assert_equal actual, expected
  end

  def test_with_more_than_two_values
    actual = %x|./rectangle 3|
    expected = "You must enter two valid arguments!"
    assert_equal actual, expected
  end

  def test_with_negatives_values
    actual = %x|./rectangle -3 -2|
    expected = "The arguments must be positive !"
    assert_equal actual, expected
  end

  def test_with_only_one_argv
    actual = %x|./rectangle 201 101|
    expected = "The values are too high !"
    assert_equal actual, expected
  end

  def test_output_only_one_line
    actual = %x|./rectangle 5 1|
    expected = "/***\\"
    assert_equal actual, expected
  end

  def test_output_only_one_character
    actual = %x|./rectangle 1 1|
    expected = "/"
    assert_equal actual, expected
  end
end