require 'test_helper'

class ProblemTest < ActiveSupport::TestCase
  subject { problems(:one)}
  
  should validate_presence_of(:title)
  should validate_presence_of(:text)
  
  should belong_to(:user)
  should have_many(:notes)
end
