module MetaTools
  # The hidden singleton lurks behind everyone
  def metaclass
    puts "Warning: #metaclass will be deprecated in 0.3.0. Use #meta_class"
    meta_class
  end
  
  def meta_class
    class << self; self; end
  end
  
  # Evaluate a block within the instance of the meta_class
  def meta_eval(&blk)
    meta_class.instance_eval(&blk)
  end

  # Adds methods to a meta_class
  def meta_def(name, &blk)
    meta_eval { define_method(name, &blk) }
  end

  # Defines an instance method within a class
  def class_def(name, &blk)
    class_eval { define_method(name, &blk) }
  end
  
  # Send a method to the meta_class
  def meta_send(meth, *args, &blk)
    meta_class.send(meth, *args, &blk)
  end
  
  # Send a method to the class
  def class_send(meth, *args, &blk)
    self.class.send(meth, *args, &blk)
  end
end
