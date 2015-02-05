require 'minitest_helper'

describe Locky do

  let(:locker) { Locky.new :test }
  
  it 'Test' do
    locker.name.must_equal :test
    locker.wont_be :locked?

    locker.lock :process_1 do
      locker.must_be :locked?
      locker.locked_by.must_equal :process_1

      error = proc { locker.lock :process_2 }.must_raise Locky::Error
      error.message.must_equal 'test already locked by process_1'
    end

    locker.wont_be :locked?
  end

end