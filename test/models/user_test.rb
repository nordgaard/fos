require 'test_helper'

class UserTest < ActiveSupport::TestCase

  describe User do 
    it "is valid with a firstname, lastname and email"
    it "is invalid without a firstname"
    it "is invalid without a lastname"
    it "is invalid without an email address"
    it "is invalid with a duplicate email address"   
  end

end
