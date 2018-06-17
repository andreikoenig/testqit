require "testqit/version"

module Testqit
  # Your code goes here...
  def assert_equals(a,b)
    assert(a == b)
  end 

  def self.assert(test)
    raise RuntimeError, "Failed test", caller unless test
  end
  # Your code goes here...

  # def self.say_hello_world
  #   puts create_phrase
  # end

  # def self.create_phrase
  #   "Hello World from testqit"
  # end

  # def self.private_two
  #   'worked'
  # end

  private_class_method(:assert)
end
