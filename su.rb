class Su < Command
  def initialize
    super('su', 'Become the super user.')
  end

  def execute(args = [])
    env[:user] = 'root'
  end
end