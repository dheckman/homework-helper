require 'test_helper'

class ProblemsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  #  context "GET problems#home" do
  #   setup { get :home }
  #
  #   should render_template("home")
  #   should respond_with(:success)
  #
  #   should "instantiate a problem object" do
  #     assert assigns[:problem], "Should have a problem"
  #   end
  #
  #   should "load unanswered problems" do
  #     assert assigns[:unanswered_problems], "Should load unanswered problems"
  #   end
  #
  #   should "load recently answered problems" do
  #     assert assigns[:answered_problems], "Should load recently answered problems"
  #   end
  # end
  #
  # context "GET problems#index" do
  #   setup { get :index }
  #
  #   should render_template("index")
  #   should respond_with(:success)
  #
  #   should "load problems" do
  #     assert assigns[:problems], "Should load problems"
  #   end
  # end
  #
  # context "GET problems#show" do
  #   setup { get :show, id: problems(:one) }
  #
  #   should render_template("show")
  #   should respond_with(:success)
  #
  #   should "load problem" do
  #     assert_equal problems(:one), assigns[:problem]
  #   end
  #
  #   should "instantiate answer" do
  #     assert assigns[:answer], "Should have a blank answer"
  #   end
  # end
  #
  # context "GET problems#new" do
  #   context "when not logged in" do
  #     setup { get :new }
  #
  #     should "redirect to login" do
  #       assert_redirected_to login_path
  #     end
  #   end
  #
  #   context "when logged in" do
  #     setup do
  #       get :new, {}, logged_in_session
  #     end
  #
  #     should render_template("new")
  #     should respond_with(:success)
  #
  #     should "instantiate a problem object" do
  #       assert assigns[:problem], "Should have a problem"
  #     end
  #   end
  # end
  #
  # context "POST problems#create" do
  #   context "when not logged in" do
  #     setup { post :create }
  #
  #     should "redirect to login" do
  #       assert_redirected_to login_path
  #     end
  #   end
  #
  #   context "when logged in" do
  #     context "with invalid data" do
  #       setup do
  #         post :create, invalid_problem_data, logged_in_session
  #       end
  #
  #       should render_template(:new)
  #
  #       should "instantiate an invalid problem object" do
  #         assert_invalid_model(:problem)
  #       end
  #     end
  #
  #     context "with valid data" do
  #       setup do
  #         post :create, valid_problem_data, logged_in_session
  #       end
  #
  #       should "create a problem" do
  #         assert_saved_model(:problem)
  #       end
  #
  #       should "redirect to problem" do
  #         assert_redirected_to problem_path(assigns[:problem])
  #       end
  #     end
  #   end
  # end
end
