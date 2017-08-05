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

# Introduction of user interface
puts
puts
puts
puts
puts
puts
puts "       Welcome to Jon Bank"
puts "     Please insert your card"
puts "     press enter to continue"
puts
puts
puts
puts

gets.chomp

def intro
  #Establish the account balance
  $balance = 0
  $runner = 1

  puts
  puts
  puts "   Thank you for banking with us today."
  while $runner == 1
    puts "     Here are your available options"
    puts
    puts "[1] Withdraw             [3] Check Balance"
    puts "[2] Deposit              [4] Remove Card"
    puts
    puts

    optionsAnswer = gets.chomp.to_i

    if optionsAnswer == 1
      withdraw_function
    elsif optionsAnswer == 2
      deposit_function
    elsif optionsAnswer == 3
      check_balance
    elsif optionsAnswer == 4
      puts
      puts
      puts "We hope you have enjoyed your Jon Bank"
      puts " experience and hope to see you soon"
      puts
      puts

      $runner = 2
      return $runner
    else
      puts "Please select valid option"
    end
  end

  while $runner ==2

    puts
    puts
    puts
    puts
    puts "We hope you have enjoyed your Jon Bank"
    puts " experience and hope to see you soon"
    puts
    puts
    puts
    puts

  end
end

def deposit_function
  puts "How much would you like to deposit today?"
  depositAnswer = gets.chomp.to_i

  if depositAnswer <= 0
    puts "Please write a positive number"
  elsif depositAnswer > 0
  $balance = $balance + depositAnswer
  puts
  puts
  puts
  puts
  puts
  puts
  puts "Your balance is now $#{$balance}"
  puts
  puts
  puts
  puts
  puts
  puts
  puts "Would you like to do anything else?"
  puts "             [Y]/[N]"
  puts
  puts
  puts
  puts
  option = gets.chomp.downcase
    if option == "y"
      $runner = 1
      return $runner
    elsif option == "n"
      $runner = 2
      return $runner
    else puts "Please select valid option"
    end

  return $balance

  else
  puts
  puts
  puts
  puts
  puts "Please enter number"
  puts
  puts
  puts
  puts
  end
end

def withdraw_function
  puts  "How much would you like to withdraw today?"
  withdrawAnswer = gets.chomp.to_i

  if withdrawAnswer <= 0
    puts "Please write a positive number"
  elsif withdrawAnswer > 0 && withdrawAnswer < $balance
  $balance = $balance - withdrawAnswer
  puts
  puts
  puts
  puts
  puts
  puts
  puts "Your balance is now $#{$balance}"
  puts
  puts
  puts
  puts
  puts
  puts
  puts "Would you like to do anything else?"
  puts "             [Y]/[N]"
  puts
  puts
  puts
  puts
  option = gets.chomp.downcase
    if option == "y"
      $runner = 1
      return $runner
    elsif option == "n"
      $runner = 2
      return $runner
    else puts "Please select valid option"
    end

  return $balance

  else
    puts
    puts
    puts
    puts
    puts "You have insufficient funds"
    puts
    puts
    puts
    puts
  end
end

def check_balance
  puts
  puts
  puts
  puts
  puts "Your balance is $#{$balance}"
  puts
  puts
  puts
  puts "Would you like to do anything else?"
  puts "             [Y]/[N]"
  puts
  puts
  puts
  puts
  option = gets.chomp.downcase
  if option == "y"
    $runner = 1
    return $runner
  elsif option == "n"
    $runner = 2
    return $runner
  else puts "Please select valid option"
  end
end

intro
