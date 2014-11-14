require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "STI Teacher" do
    assert_equal Teacher, users(:teacher).class
  end

  test "STI Student" do
    assert_equal Student, users(:student).class
  end
end
