class Ls < Command
  def initialize()
    super('ls', 'Lists the files in the current directory.')
  end

  def execute(args = [])
    puts files.join("\n") unless files.empty?
    puts "There are #{files.length} files in the directory"
  end

  def files
    @env[:files] || []
  end
end