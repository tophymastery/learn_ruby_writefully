require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email should not be valid" do
    user = User.new(email: 'invalid', 
                    password: 'tophy', 
                    password_confirmation: 'tophy')

    assert_not user.valid?
  end

  test "email should be valid" do
    user = User.new(email: 'valid@gmail.com', 
                    password: 'tophy', 
                    password_confirmation: 'tophy')

    assert user.valid?
  end

  test "user should have confirmation token" do
    user = User.create(email: 'valid@gmail.com', 
                    password: 'tophy', 
                    password_confirmation: 'tophy')

    assert_not_nil user.confirmation_token
  end
end
