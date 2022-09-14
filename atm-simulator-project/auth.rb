def auth
  puts '_____________'
  puts 'Enter your 4 digits pin:'
  pin = gets.chomp
  return if pin == 'exit'

  user = verify_pin(pin)
  if user.nil?
    puts 'Incorrect pin'
    auth
  else
    menu(user)
  end
end

def verify_pin(pin)
  USER_DB.each do |user|
    if user[:pin] == pin
      return user
    end
  end
  return nil
end
