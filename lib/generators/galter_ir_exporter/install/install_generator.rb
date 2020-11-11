require 'rails/generators'
require 'rails/generators/active_record'

module GalterIrExporter
  class Install < Rails::Generators::Base
    include ActiveRecord::Generators::Migration

    source_root File.expand_path('../templates', __FILE__)

    desc "galter_ir_exporter generator to create the required migrations"

    # Setup the database migrations
    def copy_migrations
      migration_template "create_galter_ir_exporter_migration_survey_items.rb", "db/migrate/create_galter_ir_exporter_migration_survey_items.rb"
    end
  end
end
