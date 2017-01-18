require 'rspec'
require_relative '../ls'

describe Ls do
  context "no files present" do
    it "should print a message that no files are present" do
      cmd = Ls.new
      expect(cmd).to receive(:puts).once.with(/0 files/i)

      cmd.execute
    end
  end

  context "some files exist" do
    let(:cmd) { Ls.new }

    before do
      cmd.env = {files: ['file1.txt', 'file2.txt']}
    end

    it "should show the files" do
      expect(cmd).to receive(:puts).with(/file1\.txt.*file2\.txt/m)
      allow(cmd).to receive(:puts).with(any_args)
      cmd.execute
    end

    it "should show the file count" do
      expect(cmd).to receive(:puts).with(any_args)
      expect(cmd).to receive(:puts).with(/2 files/i)
      cmd.execute
    end
  end
end