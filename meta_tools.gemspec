Gem::Specification.new do |s|
  s.author = "Ryan Scott Lewis"
  s.email = "c00lryguy@gmail.com"
  s.homepage = "http://github.com/c00lryguy/meta_tools"
  
  s.description = "A Module that simply contains some methods that help out when metaprogramming."
  s.summary = "Tools for metaprogramming."
  
  s.require_paths = ["lib"]
  
  s.name = File.basename(__FILE__, ".gemspec")
  s.version = File.read("VERSION")
  
  # Add directories you *might* use in ALL projects.
  s.files = [File.basename(__FILE__)] + Dir['lib/**/*'] + Dir['spec/**/*']
  
  # Add files you *might* use in ALL projects!
  %W{Gemfile.lock README.* README Rakefile VERSION LICENSE}.each do |file|
    s.files.unshift(file) if File.exists?(file)
  end
  
  # Add files you *might* use in ALL projects!
  %W{README.* README VERSION LICENSE LICENSE.*}.each do |file|
    (s.extra_rdoc_files ||= []).unshift(file) if File.exists?(file)
  end
  
  s.test_files = Dir['spec/**/*_spec.rb']
end