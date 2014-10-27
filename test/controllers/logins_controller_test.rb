require 'test_helper'

class LoginsControllerTest < ActionController::TestCase
  context "POST logins#create" do
    context "when I send invalid info" do
      setup { post :create, login: { email: users(:one).email, password: "" } }

      should "instantiate an invalid login object" do
        assert assigns["login"], "Should have a login"
        assert assigns["login"].invalid?, "Should have an invalid login"
      end
    end
  end
end
