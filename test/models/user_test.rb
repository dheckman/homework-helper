require 'test_helper'

class UserTest < ActiveSupport::TestCase
  subject { users(:one)}
  
  should validate_presence_of(:name)
  should validate_presence_of(:email)
  should validate_uniqueness_of(:email).case_insensitive
  should_not allow_value("this is not an email").for(:email)
  should_not allow_value("@").for(:email)
  should_not allow_value("     space@email.com").for(:email)
  
  should have_many(:questions)
  should have_many(:notes)
 
end
