require 'pp'
require_relative 'fpilon_user'

user = User.new 'johnier@example', 'Francis'

pp user

user.save