require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  should validate_presence_of(:text)
  
  should belong_to(:user)
  should belong_to(:problem)
end
