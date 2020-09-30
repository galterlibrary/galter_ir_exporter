require 'galter_ir_exporter/migration/survey/item'
require 'galter_ir_exporter/migration/survey/fedora_id_service'
require 'galter_ir_exporter/migration/survey/surveyor'

module GalterIrExporter
  module Migration
    module Survey
      VERSION = GalterIrExporter::VERSION

      def self.table_name_prefix
        'galter_ir_exporter_migration_survey_'
      end
    end
  end
end
