#by using the symbol :user we get factory girl t simulate the User model

Factory.define :user do |user|
  user.name			"Casey Harford"
  user.email			"casey@caseyharford.com"
  user.password			"foobar"
  user.password_confirmation	"foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end

