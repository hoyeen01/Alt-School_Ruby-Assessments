def is_integer?(str)
  str.to_i.to_s == str
end

def action_successful(user)
  puts 'Hit enter to go back'
  gets

  menu(user)
end