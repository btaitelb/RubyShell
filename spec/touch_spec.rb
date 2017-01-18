require 'rspec'
require_relative '../touch'

describe Touch do
  describe '#execute' do
    let(:cmd) { Touch.new }

    it 'should create a new file in the environment' do
      cmd.execute(['test1_file1.txt'])
      expect(cmd.env[:files]).to include('test1_file1.txt')
    end

    it 'should create multiple new files in the environment' do
      cmd.execute(['test2_file1.txt', 'test2_file2.txt'])
      expect(cmd.env[:files]).to include('test2_file1.txt')
      expect(cmd.env[:files]).to include('test2_file2.txt')
    end
  end
end