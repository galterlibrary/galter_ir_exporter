module GalterIrExporter
  class Install < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    # Setup the database migrations
    def copy_migrations
      rake 'galter_ir_exporter:install:migrations'
    end
  end
end
