require_relative './auth'
require_relative './db'
require_relative './menu/balance'
require_relative './menu/withdraw'
require_relative './menu/deposit'
require_relative './menu/menu'


def run
  puts 'Welcome to Star bank enter exit to close the program'
  puts '================================'
  puts ''

  auth
end

run