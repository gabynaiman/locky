class Locky

  Error = Class.new StandardError
  
  attr_reader :name

  def initialize(name, adapter={})
    @name = name
    @adapter = adapter
  end

  def lock(process)
    raise Error, "#{name} already locked by #{locked_by}" if locked?
    adapter[name] = process
    yield
  ensure
    adapter.delete name
  end

  def locked?
    adapter.key? name
  end

  def locked_by
    adapter[name]
  end

  private

  attr_reader :adapter

end