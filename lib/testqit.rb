require "testqit/version"

module Testqit
  # Your code goes here...
  def self.assert_equals(a, b)
    assert(a == b, "Failed assert_equals: expected #{a} to equal #{b}")
  end 

  def self.assert(test, msg = "Failed test")
    unless test then
      bt = caller.drop_while { |s| s =~ /#{__FILE__}/ }
      raise RuntimeError, msg, bt
  end
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
