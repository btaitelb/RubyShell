class CommandRegistry
  def self.register(cmd)
    registry[cmd.name] = cmd
  end

  def self.find(name)
    registry[name]
  end

  def self.registry
    @registry ||= {}
  end
end
