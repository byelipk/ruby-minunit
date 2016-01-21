class Minunit
  attr_reader :tests_passed, :tests_failed

  def initialize()
    @tests_passed = 0
    @tests_failed = 0
  end

  def assert(test, message)
    return message if test == false
  end

  def run_test(test)
    message = test.call()
    if message
      puts message
      @tests_failed = tests_failed + 1
    else
      @tests_passed = tests_passed + 1
    end
  end
end
