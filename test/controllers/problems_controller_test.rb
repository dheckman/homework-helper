require 'test_helper'

class ProblemsControllerTest < ActionController::TestCase

  def valid_problem_attributes
    {text: "text",
     tried: "tried",
     resolved: false
     }
  end

  def invalid_problem_attributes
    {text: 3,
     tried: 1,
     resolved: ""}
  end

  context "POST :create" do

    context "when I send invalid information" do
      setup { post :create, { problem: invalid_problem_attributes } }

      should "render new" do
        assert_template :new
      end
    end

    context "when I send valid information" do
      setup { post :create, { problem: valid_problem_attributes } }

      should "create a new problem" do
        assert_response :success
      end
    end

  end
end
