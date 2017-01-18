require './command'

class Touch < Command
  def initialize
    super('touch', 'Create one or more new files.')
  end

  def execute(args = [])
    env[:files] ||= []
    env[:files] += args
  end
end