  require 'test_helper'

  class UserTest < ActiveSupport::TestCase

    describe User do 
      it "is valid with a firstname, lastname and email"
      it "is invalid without a firstname"
      it "is invalid without a lastname"
      it "is invalid without an email address"
      it "is invalid with a duplicate email address"   
    end

    describe User do

      it "is valid with a firstname, lastname and email" do
       user = User.new(
         firstname: 'Aaron',
         lastname: 'Sumner',
         email: 'tester@example.com')
       expect(user).to be_valid
     end

     it "is invalid without a firstname" do
      user = FactoryGirl.build(:user, firstname: nil)
      user.valid?
      expect(user.errors[:firstname]).to include("can't be blank")
     end  

     it "is invalid without a lastname" do
       user = User.new(lastname: nil)
       user.valid?
       expect(user.errors[:lastname]).to include("can't be blank")
     end  

     it "is invalid without a email" do
       user = User.new(email: nil)
       user.valid?
       expect(user.errors[:email]).to include("can't be blank")
     end

     it "is invalid with a duplicate email address" do
       User.create(
         firstname: 'Joe', lastname: 'Tester',
         email: 'tester@example.com')
       user = User.new(
         firstname: 'Jane', lastname: 'Tester',
         email: 'tester@example.com')
       user.valid?
       expect(user.errors[:email]).to include("has already been taken")
     end

     it "has a valid factory" do
      expect(FactoryGirl.build(:user)).to be_valid
     end


   end




 end
