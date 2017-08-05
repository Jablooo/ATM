=begin
****BRIEF****
Use Ruby to create a terminal app that behaves like an ATM in real life.

structure:
- intro to customer and displaying the options.
      - use case when for your code
- running each option individually (withdraw, check balance, greeting, deposit)
      - use loops
- sign off
add an array to track the account @

=end

def intro
  #Establish the account balance
  $balance = 0

  # Introduction of user interface
  puts
  puts
  puts "       Welcome to Jon Bank"
  puts "     Please insert your card"
  puts "     press enter to continue"

  gets.chomp

  puts
  puts
  puts "   Thank you for banking with us today."
  puts "     Here are your available options"
  puts
  puts "[1] Withdraw             [3] Check Balance"
  puts "[2] Deposit              [4] Remove Card"
  puts
  puts

runner = 1

  while runner == 1
    optionsAnswer = gets.chomp.to_i

    if optionsAnswer == 1
      withdraw_function
      puts $balance
    elsif optionsAnswer == 2
      deposit_function
      puts $balance
    elsif optionsAnswer == 3
      check_balance
    elsif optionsAnswer == 4
      puts "We hope you have enjoyed your Jon Bank"
      puts " experience and hope to see you soon"

      runner = 2
    else
      puts "Please select valid option"
    end
  end
end

def withdraw_function
  puts  "How much would you like to withdraw today?"
  withdrawAnswer = gets.chomp.to_i

  if withdrawAnswer <= 0
    puts "Please write a positive number"
  elsif withdrawAnswer < 0 && withdrawAnswer < $balance
  $balance = $balance - withdrawAnswer

  puts "Your balance is now #{$balance}"
  puts "Have a nice day"
  return $balance

  else
    puts "You have insufficient funds"
  end
end

def deposit_function
  puts "How much would you like to deposit today?"
  depositAnswer = gets.chomp.to_i

  if depositAnswer <= 0
    puts "Please write a positive number"
  elsif depositAnswer > 0
  $balance = $balance + depositAnswer

  puts "Your balance is now #{$balance}"
  puts "Have a nice day"
  return $balance

  else
  puts "Please enter number"
  end
end

def check_balance
  puts "Your balance is #{$balance}"
  puts "Have a nice day"
end

intro
