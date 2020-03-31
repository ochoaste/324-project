require 'test_helper'

class AdopteeTest < ActiveSupport::TestCase

  def setup
    @adoptee = Adoptee.new(name: "Example Adoptee", age: 22, email: "adoptee@example.com", personality: "Unknown")
  end

  test "should be valid" do
    assert @adoptee.valid?
  end

  test "name should be present" do
    @adoptee.name = "     "
    assert_not @adoptee.valid?
  end
  
  test "email should be present" do 
    @adoptee.email = " " 
    assert_not @adoptee.valid? 
  end 

  test "name should not be too long" do
    @adoptee.name = "a" * 51
   assert_not @adoptee.valid?
  end

  test "email should not be too long" do
    @adoptee.email = "a" * 244 + "@example.com"
    assert_not @adoptee.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[adoptee@example.com adoptee@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @adoptee.email = valid_address
      assert @adoptee.valid?, "#{valid_address.inspect} should be a valid email address"
    end
  end

test "email validation should reject invalid addresses" do
    invalid_addresses = %w[adoptee@example,com adoptee_at_foo.org adoptee.name@example. foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    invalid_addresses.each do |invalid_address|
      @adoptee.email = invalid_address
      assert_not @adoptee.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "personiality should be present" do 
    @adoptee.personality = " " 
    assert_not @adoptee.valid? 
  end

  test "personality description not too long" do 
    @adoptee.personality = "a" * 501 
    assert_not @adoptee.valid? 
  end

  test "age should be present" do 
    @adoptee.age = " " 
    assert_not @adoptee.valid? 
  end 


end
