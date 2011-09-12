require 'pathname'

class String
  def to_pathname
    Pathname.new(self)
  end
end

__FILE__.to_pathname.dirname.glob("..", "lib", "**", "*.rb").each do |f|
  require f.expand_path.to_s
end