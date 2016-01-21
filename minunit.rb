class Minunit
  attr_reader :tests_passed, :tests_failed

  def initialize()
    @tests_passed = 0
    @tests_failed = 0
  end

  def assert(test, message)
    return message if test == false
  end

  def run_test(test=nil)
    message = if block_given?
      yield
    elsif test && test.respond_to?(:call)
      test.call()
    else
      raise "ERROR: No Test Given"
    end

    if message
      @tests_failed = tests_failed + 1
      puts message
    else
      @tests_passed = tests_passed + 1
      puts "TEST PASSED"
    end
  end
end
