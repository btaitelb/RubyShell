require './all_commands' unless defined?(COMMANDS)

COMMANDS.each do |cmd|
  require "./#{cmd}"
end

require './prompt'
require './command_registry'

class Shell

  def find(name)
    CommandRegistry.find(name)
  end

  def run
    prompt = Prompt.new('%{user}@RubyShell> ')

    loop do
      print prompt.text
      input_parts = gets.strip.split
      cmd_name, args = input_parts[0], input_parts[1..-1]

      cmd = find(cmd_name)
      if cmd == nil
        puts "Command not found: '#{cmd_name}'"
      else
        cmd.execute(args)
      end
    end
  end

  def self.environment
    @environment ||= {user: ENV['USER'] || 'user'}
  end
end

def load_known_commands
  COMMANDS.each do |cmd|
    eval("#{cmd.capitalize}.new")
  end
end

load_known_commands
