#../spec/account_spec.rb
require_relative "../account"
require_relative '../user'
require 'rspec'

describe Account do
  before(:all) do
    @user = User.new("Vasya", "Ivanov", 18)
    @account = @user.account
  end

  it 'belongs to the user' do
    @account.user.should be(@user)
  end

  it 'has list of accounts' do
    Account.all.should include(@account)
  end

  it "should has an ID" do
    @account.id.should_not be_false
  end

  it "has a balance in the start" do
    @account.balance.should be 0
  end
end