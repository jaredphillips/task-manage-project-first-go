# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
  	user
  	title "Project One"
    objective "To ge this project done with the help of the team"
    completed false
  end
end
