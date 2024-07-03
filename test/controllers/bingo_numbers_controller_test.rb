require "test_helper"

class BingoNumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bingo_numbers_index_url
    assert_response :success
  end

  test "should get mark" do
    get bingo_numbers_mark_url
    assert_response :success
  end

  test "should get clear" do
    get bingo_numbers_clear_url
    assert_response :success
  end
end
