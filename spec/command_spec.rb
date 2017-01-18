require 'rspec'
require_relative '../command'

describe Command do
  describe 'new' do
    it 'sets the command name' do
      cmd = Command.new('test_command')
      expect(cmd.name).to eq('test_command')
    end

    context 'no description given' do
      it 'sets the description to empty' do
        cmd = Command.new('test_command')
        expect(cmd.description).to eq('')
      end
    end

    it 'sets the description to what is given' do
      cmd = Command.new('test_command', 'test description')
      expect(cmd.description).to eq('test description')
    end
  end

  describe '#execute' do
    it 'raises a NotImplmentedError' do
      cmd = Command.new('test_command')
      expect { cmd.execute }.to raise_error(NotImplementedError)
    end
  end
end
