meta_tools
==========

A Module that simply contains some methods that help out when metaprogramming. 

Source [Source](http://dannytatom.github.com/metaid/ "Source")

Example
-------

```ruby
class User
  attr :role, :name
  
  def initialize(name, role=:user)
    @name, @role = name, role
    
    if role == :admin
      meta_def(:ban) do |user|
        puts "#{user.name} has been banned by #{@name}!"
      end
    end
  end
  
end

u1 = User.new("John")
u2 = User.new("Joe", :admin)

u2.ban("Jacob") # => Jacob has been banned by John!
u1.ban("Jerry") # => NoMethodError

```

Contributing to meta_tools
--------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2011 Ryan Lewis. See LICENSE.txt for
further details.

