FactoryBot.define do
  factory :ping do
    time { "2020-04-27 11:08:09" }
    store { "Ica" }
    association :user, factory: :user
    
  end
end
