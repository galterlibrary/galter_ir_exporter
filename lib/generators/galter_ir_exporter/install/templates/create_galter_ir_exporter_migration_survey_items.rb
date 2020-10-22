class CreateGalterIrExporterMigrationSurveyItems < ActiveRecord::Migration
  def change
    create_table :galter_ir_exporter_migration_survey_items do |t|
      t.string :object_id
      t.string :object_class
      t.text :object_title
      t.integer :migration_status

      t.timestamps null: false
    end
  end
end
