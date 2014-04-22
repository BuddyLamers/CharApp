require 'spec_helper'

describe User do

  subject(:user) do
    FactoryGirl.build(:user,
      username: "buddy",
      email: "email@test.com",
      password: "good_password",
      activated: false)
  end

  #does not check for validation of token or activation token
  #because they are automatically set before validation
  #and they must be present for the model to function in other respects

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should ensure_length_of(:password).is_at_least(6) }

  #add a line to validate that activated starts as false

  it "validates uniqueness of username" do
    user.save
    user2 = User.new(:username => "buddy", :email => "email2@test.com",
                    :password =>  "good_password", :activated => false)
    expect(user2).not_to be_valid
  end

  it "creates a password digest when a password is given" do
    expect(user.password_digest).to_not be_nil
  end

  it "creates a token before validation" do
    user.valid?
    expect(user.token).to_not be_nil
  end

  describe "#reset_token!" do
    it "sets a new session token on the user" do
      user.valid?
      old_token = user.token
      user.reset_token!

      # Miniscule chance this will fail.
      expect(user.token).to_not eq(old_token)
    end

    it "returns the new session token" do
      expect(user.reset_token!).to eq(user.token)
    end
  end

  describe "#is_password?" do
    it "verifies a password is correct" do
      expect(user.is_password?("good_password")).to be_true
    end

    it "verifies a password is not correct" do
      expect(user.is_password?("bad_password")).to be_false
    end
  end

  describe ".find_by_credentials" do
    before { user.save! }

    it "returns user given good credentials" do
      expect(User.find_by_credentials("buddy", "good_password")).to eq(user)
    end

    it "returns nil given bad credentials" do
      expect(User.find_by_credentials("buddy", "bad_password")).to eq(nil)
    end
  end

  describe ".activate!" do

    it "activates a user in the database" do
      user.activate!
      user.save!
      expect(user.activated).to be_true
    end

  end
end