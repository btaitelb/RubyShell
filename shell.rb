require './ls'
require './command_registry'

class Shell

  def find(name)
    CommandRegistry.find(name)
  end

  private
end

def load_known_commands
  Ls.new
end

load_known_commands
