require_relative '../utility'

def deposit(user)
  puts '____________'
  puts 'Enter amount'
  amount = gets.chomp
  return  failed_deposit('Insufficient funds!', user) if !is_integer?(amount)
  return  failed_deposit('Invalid amount', user) if amount.to_i > user[:balance]

  user[:balance] += amount.to_i
  puts 'transaction successful'
  action_successful(user)
end

def failed_deposit(message, user)
  puts message
  deposit(user)
end