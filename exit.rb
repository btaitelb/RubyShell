class Exit < Command
  def initialize
    super('exit', 'Quits the program.')
  end

  def execute(args = [])
    if args.length > 0
      code = args.first.to_i
    else
      code = 0
    end

    exit(code)
  end
end