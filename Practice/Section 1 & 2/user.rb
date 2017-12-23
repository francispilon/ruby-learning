module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey I'm running"
  end
  
  def self.identify_yourself
    puts "Hey I am a class method"
  end 
end 

class Buyer < User
  def run
    puts "Hey I'm not running and I'm in buyer class"
  end
end

class Seller < User

end

class Admin < User
  
end

user = User.new("Francis", "francis@example.com")
puts "My user's name is #{user.name} and his email is #{user.email}"
user.name = "Gabriel"
user.email = "gabriel@example.com"
puts "My user's new name is #{user.name} and his new email is #{user.email}"

buyer1 = Buyer.new("John Doe", "jonh@example.com")
seller1 = Seller.new("John Doh", "jonh2@example.com")
admin1 = Admin.new("John Don", "jonh2@example.com")
buyer1.run
seller1.run
admin1.run

puts Buyer.ancestors
puts User.identify_yourself
puts buyer1.destroy("myenjoy")