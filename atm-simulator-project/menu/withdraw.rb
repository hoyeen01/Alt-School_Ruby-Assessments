require_relative '../utility'

def withdraw(user)
  puts '____________'
  puts 'Enter amount'
  amount = gets.chomp
  return  failed_withdrawal('Insufficient funds!', user) if !is_integer?(amount)
  return  failed_withdrawal('Invalid amount', user) if amount.to_i > user[:balance]

  user[:balance] -= amount.to_i
  puts 'withdrawal successful'
  action_successful(user)
end

def failed_withdrawal(message, user)
  puts message
  withdraw(user)
end