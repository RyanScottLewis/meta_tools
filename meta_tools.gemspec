Gem::Specification.new do |s|
  s.author = "Ryan Scott Lewis"
  s.email = "c00lryguy@gmail.com"
  s.homepage = "http://github.com/c00lryguy/meta_tools"

  s.description = "A Module that simply contains some methods that help out when metaprogramming."
  s.summary = "Tools for metaprogramming."
  
  s.require_paths = ["lib"]
  
  s.name = File.basename(__FILE__, ".gemspec")
  s.version = File.read("VERSION")
  # VERSIONING
  # Some people like to use a YAML file to display the version, some like CSV,
  # others might just add a constant set to a version string, some (Rack) might
  # even have an array splitting the version into parts.
  # Just edit the above line appropriately.
  # An easy thing to do is set a constant within your app to a version string
  # and use it in here
  
  # Add directories you *might* use in ALL projects. The point is to never need to change.
  s.files = Dir['{bin,examples,lib,spec,test}/**/*']
  
  # Add files you *might* use in ALL projects! The point is to never need to change.
  %W{Gemfile.lock *.gemspec README.* README Rakefile VERSION *.thor LICENSE LICENSE.*}.each do |file|
    s.files.unshift(file) if File.exists?(file)
  end
  
  # Add files you *might* use in ALL projects! The point is to never need to change.
  %W{README.* README VERSION LICENSE LICENSE.*}.each do |file|
    (s.extra_rdoc_files ||= []).unshift(file) if File.exists?(file)
  end
  
  # If you only specify one application file in executables, that file becomes 
  # the default executable. Therefore, you only need to specify this value if you 
  # have more than one application file. 
  # 
  # Remove this whole section if you do not have any binaries within your project.
  if s.executables.length > 1
    if exe = s.executables.find { |e| e.include?(File.basename(__FILE__, ".gemspec")) }
      s.default_executable = exe
    else
      raise(Exception, "Couldn't automatically figure out the default_executable")
    end
  end
  
  s.test_files = Dir['{examples,spec,test}/**/*']
  
  # Add dependencies here:
  # This is required for your gem to work:
  # s.add_dependency("some_required_gem", "~> 0.1.0")
  # This is required for developers to build and test your gem:
  s.add_development_dependency("rspec", "~> 2.6.0")
end