require "shoulda-matchers"

RSpec.configure do |config|
  config.include Shoulda::Matchers::ActiveModel
  config.include Shoulda::Matchers::ActiveRecord
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
