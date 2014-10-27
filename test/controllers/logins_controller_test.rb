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
  # def valid_login_attributes
#     {email: Faker::Internet.email,
#      password: "password"}
#   end
#   def invalid_login_attributes
#     {email: "",
#      password: "" }
#   end
#
#   context "POST :create" do
#     context "when I send invalid information" do
#       setup { post :create, {user: invalid_login_attributes}}
#
#       should "re-render the form" do
#         assert login.invalid?
#         assert_template :new
#       end
#     end
#
#     context "when I send valid information" do
#       setup {post :create, {user: valid_login_attributes }}
#       should "create a session" do
#         session_attributes = valid_login_attributes
#         post :create,  session_attributes
#       end
#     end
#   end
end
