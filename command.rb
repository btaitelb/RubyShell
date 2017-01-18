class Command

  attr_accessor :name, :description, :out, :env

  def initialize(name, description='')
    @name = name
    @description = description
    @out = $stdout
    @env = {}
  end

  def execute(args=[])
    raise NotImplementedError
  end

  def puts(msg)
    out.puts(msg)
  end
end