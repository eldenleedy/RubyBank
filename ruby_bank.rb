# frozen-string-literal: true

require_relative 'account'

a1 = Account.new("Elden Leedy", 500)
a2 = Account.new("Tristan Leedy", 1000)

a1.deposit(100)
a2.withdraw(100)
a2.transfer(150, a1)

puts a1
puts a2
