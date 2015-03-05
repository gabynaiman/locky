class Locky

  class Error < StandardError
    def initialize(locker)
      @locker = locker
    end

    def message
      "#{@locker.name} already locked by #{@locker.locked_by}"
    end
  end

  attr_reader :name

  def initialize(name, storage={})
    @name = name
    @storage = storage
  end

  def lock(process)
    raise Error, self if locked? && locked_by != process
    register process
    begin
      yield
    ensure
      unregister
    end
  end

  def lock!(process)
    raise Error, self if locked?
    lock(process) { yield }
  end

  def unlock!
    storage.delete name
    storage.delete counter
  end

  def locked?
    storage.key? name
  end

  def locked_by
    storage[name]
  end

  private

  attr_reader :storage

  def counter
    "#{name}__counter__"
  end

  def register(process)
    if storage.key? name
      storage[counter] += 1
    else
      storage[name] = process
      storage[counter] = 1
    end
  end

  def unregister
    if storage[counter] > 1
      storage[counter] -= 1
    else
      unlock!
    end
  end

end