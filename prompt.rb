class Prompt

  def initialize(prompt_string = 'RubyShell> ')
    @ps = prompt_string
  end

  def text
    @ps.gsub('%{user}', Shell.environment[:user])
  end
end