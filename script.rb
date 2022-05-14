class User
  attr_accessor :name, :surname, :email, :phone

  def initialize (name, surname, email, phone)
    @name = name
    @surname = surname
    @email = email
    @phone = phone
  end
end

class Admin < User
end

user1 = User.new("Adam", "Adamski", "a@a.pl", 111111111)
user2 = User.new("Bartosz", "Bartoszewski", "b@a.pl", 222222222)
user3 = User.new("Czeslaw", "Ciszewski", "c@a.pl", 333333333)


admin1 = Admin.new("Marcin", "Marcinkowski", "m@a.pl", 444444444)
admin2 = Admin.new("Tomasz", "Tomczewski", "t@b.pl", 555555555)

arr = [admin1, admin2]

arr.map do |admin|
  if (admin.phone.digits.sum).even?
    puts admin.phone
  end
end
