require 'test_helper'
 
class AdopteesSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "valid signup information" do
    get signup_path
    assert_difference 'Adoptee.count', 1 do
      post users_path, params: { adoptee: { name:  "Example User",
        age: 100,                                  
	email: "user@example.com",
	personality: "unknown", 
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'adoptees/show'
  end

end
