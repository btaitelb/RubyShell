require './ls'

class Shell
  def find(name)
    if name == 'ls'
      Ls.new
    end
  end
end