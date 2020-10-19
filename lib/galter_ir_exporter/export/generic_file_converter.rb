module GalterIrExporter
  module Export
    # Convert a GenericFile including metadata, permissions and version metadata into a PORO
    # so that the metadata can be exported in json format using to_json
    #
    class GenericFileConverter < Converter
      # Create an instance of a GenericFile converter containing all the metadata for json export
      #
      # @param [GenericFile] generic_file file to be converted for export
      def initialize(generic_file)
        @id = generic_file.id
        @label = generic_file.label
        @depositor = generic_file.depositor
        @arkivo_checksum = generic_file.arkivo_checksum
        @relative_path = generic_file.relative_path
        @import_url = generic_file.import_url
        @resource_type = generic_file.resource_type
        @title = generic_file.title
        @creator = generic_file.creator
        @contributor = generic_file.contributor
        @description = generic_file.description
        @tag = generic_file.tag
        @rights = generic_file.rights
        @publisher = generic_file.publisher
        @date_created = generic_file.date_created
        @date_uploaded = generic_file.date_uploaded
        @date_modified = generic_file.date_modified
        @subject = generic_file.subject
        @language = generic_file.language
        @identifier = generic_file.identifier
        @based_near = generic_file.based_near
        @related_url = generic_file.related_url
        @bibliographic_citation = generic_file.bibliographic_citation
        @source = generic_file.source
        @batch_id = generic_file.batch.id if generic_file.batch
        @visibility = generic_file.visibility
        @versions = versions(generic_file)
        @permissions = permissions(generic_file)
        @mime_type = generic_file.mime_type
        @format_label = generic_file.format_label
        @file_size = generic_file.file_size
        @last_modified = generic_file.last_modified
        @filename = generic_file.filename
        @original_checksum = generic_file.original_checksum
        @rights_basis = generic_file.rights_basis
        @copyright_basis = generic_file.copyright_basis
        @copyright_note = generic_file.copyright_note
        @well_formed = generic_file.well_formed
        @valid = generic_file.valid
        @status_message = generic_file.status_message
        @file_title = generic_file.file_title
        @file_author = generic_file.file_author
        @page_count = generic_file.page_count
        @file_language = generic_file.file_language
        @word_count = generic_file.word_count
        @character_count = generic_file.character_count
        @paragraph_count = generic_file.paragraph_count
        @line_count = generic_file.line_count
        @table_count = generic_file.table_count
        @graphics_count = generic_file.graphics_count
        @byte_order = generic_file.byte_order
        @compression = generic_file.compression
        @color_space = generic_file.color_space
        @profile_name = generic_file.profile_name
        @profile_version = generic_file.profile_version
        @orientation = generic_file.orientation
        @color_map = generic_file.color_map
        @image_producer = generic_file.image_producer
        @capture_device = generic_file.capture_device
        @scanning_software = generic_file.scanning_software
        @exif_version = generic_file.exif_version
        @gps_timestamp = generic_file.gps_timestamp
        @latitude = generic_file.latitude
        @longitude = generic_file.longitude
        @character_set = generic_file.character_set
        @markup_basis = generic_file.markup_basis
        @markup_language = generic_file.markup_language
        @bit_depth = generic_file.bit_depth
        @channels = generic_file.channels
        @data_format = generic_file.data_format
        @offset = generic_file.offset
        @frame_rate = generic_file.frame_rate
        @part_of = generic_file.part_of
        @proxy_depositor = generic_file.proxy_depositor
        @on_behalf_of = generic_file.on_behalf_of
        @abstract = generic_file.abstract
        @acknowledgments = generic_file.acknowledgments
        @grants_and_funding = generic_file.grants_and_funding
        @digital_origin = generic_file.digital_origin
        @mesh = generic_file.mesh
        @lcsh = generic_file.lcsh
        @subject_geographic = generic_file.subject_geographic
        @subject_name = generic_file.subject_name
        @page_number = generic_file.page_number
        @page_number_actual = generic_file.page_number_actual
        @doi = generic_file.doi
        @ark = generic_file.ark
        @private_note = generic_file.private_note
        @parent_id = generic_file.parent_id
        @combined_file_id = generic_file.combined_file_id
      end

      private

      def versions(gf)
        return [] unless gf.content.has_versions?
        GalterIrExporter::Export::VersionGraphConverter.new(gf.content.versions).versions
      end
    end
  end
end
