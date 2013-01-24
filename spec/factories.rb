FactoryGirl.define do
  factory :user do
    first_name  "Austin"
    last_name	"Hinkle"
    email    "williamaustinhinkle@gmail.com"
    password "letmein"
    password_confirmation "letmein"
  end
end