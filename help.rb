require './command_registry'

class Help < Command
  def initialize
    super('help', 'Displays this help message.')
  end

  def execute(args = [])
    CommandRegistry.registry.each do |name, cmd|
      printf("%12s\t%s\n", name, cmd.description)
    end
  end

end