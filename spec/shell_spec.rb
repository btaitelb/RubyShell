require 'rspec'
require_relative '../shell'

describe Shell do
  let(:shell) { Shell.new }

  describe '#find' do
    it 'should find the ls command' do
      expect(shell.find('ls')).to be_a(Ls)
    end

    it 'should find a newly created command' do
      cmd = Command.new('new_name', 'some description')
      expect(shell.find('new_name')).to eq(cmd)
    end
  end


  describe '#prompt' do
    pending 'shows the current directory' do
      expect(false).to eq(true)
    end
  end
end