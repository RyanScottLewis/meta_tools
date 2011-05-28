module MetaTools
  # The hidden singleton lurks behind everyone
  def metaclass
    class << self; self; end
  end
  
  # Evaluate a block within the instance of the metaclass
  def meta_eval(&blk)
    metaclass.instance_eval(&blk)
  end

  # Adds methods to a metaclass
  def meta_def(name, &blk)
    meta_eval { define_method(name, &blk) }
  end

  # Defines an instance method within a class
  def class_def(name, &blk)
    class_eval { define_method(name, &blk) }
  end
  
  # Send a method to the metaclass
  def meta_send(meth, *args, &blk)
    metaclass.send(meth, *args, &blk)
  end
  
  # Send a method to the class
  def class_send(meth, *args, &blk)
    self.class.send(meth, *args, &blk)
  end
end
