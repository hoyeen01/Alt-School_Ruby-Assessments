require_relative '../utility'

def check_balance(user)
  puts '_____________'
  puts "your balance is #{user[:balance]}"

  action_successful(user)
end