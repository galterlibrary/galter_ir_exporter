 ENV['environment'] ||= 'test'
require "bundler/setup"
require "galter_ir_exporter"

# development dependencies
require "active_fedora"
require "factory_girl"
require "generic_file"
require "sufia"
require "collection"
require "factories/generic_files"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expose_dsl_globally = true

  config.include FactoryGirl::Syntax::Methods

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
