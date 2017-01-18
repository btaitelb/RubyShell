require './command_registry'

class Command

  attr_accessor :name, :description, :out, :env

  def initialize(name, description='')
    @name = name
    @description = description
    @out = $stdout
    @env = Command.environment
    CommandRegistry.register(self)
  end

  def execute(args=[])
    raise NotImplementedError
  end

  def puts(msg)
    out.puts(msg)
  end

  private

  def self.environment
    @environment ||= {}
  end
end