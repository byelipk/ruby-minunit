```Ruby
framework = Minunit.new

passing_test = ->() {
  foo = 7
  framework.assert(foo == 7, "#{foo} is not equal to 7")
}

failing_test = ->() {
  foo = 9
  framework.assert(foo == 7, "#{foo} is not equal to 7")
}

framework.run_test(passing_test)
framework.run_test(failing_test)

puts "#{framework.tests_passed} tests passed"
puts "#{framework.tests_failed} tests failed"
```
