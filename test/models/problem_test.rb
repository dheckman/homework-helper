require 'test_helper'

class ProblemTest < ActiveSupport::TestCase

  should belong_to(:user)
  should have_many(:notes)

  should validate_presence_of(:text)
  should validate_presence_of(:user)

  should belong_to(:user)

end
