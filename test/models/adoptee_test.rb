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
  
#  test "email should be present" do 
 #   @adoptee.email = " " 
  #  assert_not @adoptee.valid? 
 # end 

#  test "name should not be too long" do
 #   @adoptee.name = "a" * 51
 #  assert_not @adoptee.valid?
 # end

  #test "email should not be too long" do
   # @adoptee.email = "a" * 244 + "@example.com"
   # assert_not @adoptee.valid?
  #end
end
