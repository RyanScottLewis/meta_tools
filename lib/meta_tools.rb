module MetaTools
  # The hidden singleton lurks behind everyone
  def metaclass
    warn "[DEPRECATION] `metaclass` will be deprecated in 0.3.0. Please use `meta_class` instead."
    meta_class
  end
  
  def meta_class
    class << self; self; end
  end
  
  # Evaluate a block within the instance of the meta_class
  def meta_eval(&blk)
    meta_class.instance_eval(&blk)
  end
  
  # Evaluate a block within the instance of the meta_class
  def meta_exec(*args, &blk)
    meta_class.instance_exec(*args, &blk)
  end
  
  # Send a method to the meta_class
  def meta_send(meth, *args, &blk)
    meta_class.send(meth, *args, &blk)
  end
  
  # Adds methods to a meta_class
  def meta_def(name, &blk)
    meta_eval { define_method(name, &blk) }
  end
  
  # Returns an Array of methods defined only within this Object.
  def meta_methods
    self.class.instance_methods - Object.instance_methods
  end
  
  # Defines an instance method within a class
  def class_def(name, &blk)
    class_eval { define_method(name, &blk) }
  end
  
  # Send a method to the class
  def class_send(meth, *args, &blk)
    self.class.send(meth, *args, &blk)
  end
end
