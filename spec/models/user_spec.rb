#require 'rails_helper'
require 'spec-helper'

RSpec.describe User, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe User do

  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }
  .
  .
  .
  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end
end
