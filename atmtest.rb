#Establish the account balance
def balance
  balance = 0
end

def withdraw_function
  puts  "How much would you like to withdraw today?"
  withdrawAnswer = gets.chomp.to_i

  newBalance = balance - withdrawAnswer

  puts "Your balance is now #{newBalance}"
  puts "Have a nice day"

  puts newBalance
  newBalance = balance
  return newBalance
end


def deposit_function
  puts "How much would you like to deposit today?"
  depositAnswer = gets.chomp.to_i

  newBalance = balance + depositAnswer

  puts "Your balance is now #{newBalance}"
  puts "Have a nice day"

  puts newBalance
  newBalance = balance
  # return balance
end

def check_balance
  puts "Your balance is now #{balance}"
  puts "Have a nice day"
end

deposit_function

puts newBalance
