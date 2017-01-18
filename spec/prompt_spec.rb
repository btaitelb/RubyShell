require 'rspec'
require_relative '../prompt'

describe Prompt do
  it 'should default to "RubyShell> "' do
    expect(Prompt.new.text).to eq('RubyShell> ')
  end

  context "user is UserA" do
    before do
      Shell.environment[:user] = 'UserA'
    end

    it 'should include the user in the prompt' do
      prompt = Prompt.new('%{user}>')
      expect(prompt.text).to eq('UserA>')
    end
  end

  context "user is UserB" do
    before do
      Shell.environment[:user] = 'UserB'
    end

    it 'should include the user in the prompt' do
      prompt = Prompt.new('%{user}>')
      expect(prompt.text).to eq('UserB>')
    end
  end

end