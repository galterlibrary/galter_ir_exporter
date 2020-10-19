module GalterIrExporter
  module Export
    # Convert a Collection including metadata, permissions and member ids into a PORO
    # so that the metadata can be exported in json format using to_json
    #
    class CollectionConverter < Converter
      # Create an instance of a Collection converter containing all the metadata for json export
      #
      # @param [Collection] collection to be converted for export
      def initialize(collection)
        @id = collection.id
        @title = collection.title
        @description = collection.description
        @creator = collection.creator.map { |c| c }
        @members = collection.members.map(&:id)
        @permissions = permissions(collection)
        @depositor = collection.depositor
        @part_of = collection.part_of
        @contributor = collection.contributor
        @publisher = collection.publisher
        @date_created = collection.date_created
        @date_uploaded = collection.date_uploaded
        @date_modified = collection.date_modified
        @subject = collection.subject
        @language = collection.language
        @language = collection.language
        @resource_type = collection.resource_type
        @identifier = collection.identifier
        @based_near = collection.based_near
        @tag = collection.tag
        @related_url = collection.related_url
        @abstract = collection.abstract
        @bibliographic_citation = collection.bibliographic_citation
        @digital_origin = collection.digital_origin
        @mesh = collection.mesh
        @lcsh = collection.lcsh
        @subject_geographic = collection.subject_geographic
        @subject_name = collection.subject_name
        @multi_page = collection.multi_page
        @institutional_collection = collection.institutional_collection
        @private_note = collection.private_note
        @member_ids = collection.member_ids
        @parent_id = collection.parent_id
        @combined_file_id = collection.combined_file_id
      end
    end
  end
end
