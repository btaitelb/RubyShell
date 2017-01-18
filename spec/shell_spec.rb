require 'rspec'
require_relative '../shell'

describe Shell do
  let(:shell) { Shell.new }

  describe '#find' do
    it 'should find the ls command' do
      expect(shell.find('ls')).to be_a(Ls)
    end
  end

  describe '#prompt' do
    pending 'shows the current directory' do
      expect(false).to eq(true)
    end
  end
end