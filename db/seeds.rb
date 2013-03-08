require 'faker'

10.times do
  Task.create(:content => Faker::Lorem.sentence.to_s.capitalize)
end

