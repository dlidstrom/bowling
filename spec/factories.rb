# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name "Daniel Lidström"
  user.email "dlidstrom@gmail.com"
  user.password "123456"
  user.password_confirmation "123456"
end

Factory.sequence :email do |n|
  "person-#{n}@examle.com"
end
