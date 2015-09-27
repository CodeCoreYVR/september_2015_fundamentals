load "./cookie.rb"
load "./cookie_bag.rb"

cookie_bag = CookieBag.new 10

12.times do
  sugar = rand(20)
  flour = rand(20)
  c = Cookie.new(sugar, flour)
  cookie_bag.add(c)
end

15.times do
  cookie_bag.take
end
