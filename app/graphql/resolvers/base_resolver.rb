class Resolvers::BaseResolver
  def self.call(object, arguments, context)
    new(object, arguments, context).call
  end

  def initialize(object, arguments, context)
    @obj = object
    @args = arguments
    @ctx = context
  end

  def call
    raise(NotImplemented)
  end

  protected

  attr_reader :obj
  attr_reader :args
  attr_reader :ctx
end