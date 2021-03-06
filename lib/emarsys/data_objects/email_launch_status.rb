module Emarsys

  # Internal helper class for valid email launch status.
  # Emarsys has no implementation for this data resource.
  #
  class EmailLaunchStatus < DataObject

    CODES = [
      {'0'   => 'Not launched'},
      {'1'   => 'Launch called via API, launching in Progress'},
      {'2'   => 'Email launched or scheduled for future launch'},
      {'10'   => 'Error (details in api_error)'}
    ]

    class << self

      # List email launch status codes
      #
      # @return [Hash] List of email launch status
      # @example
      #   Emarsys::EmailLaunchStatus.collection
      def collection
        CODES
      end

      # Get a specific email launch status
      #
      # @param [Integer, String] id of the code
      # @return [Hash] Key-Value-Pair of the launch code
      # @example
      #   Emarsys::EmailLaunchStatus.resource('1')
      def resource(id)
        CODES.select{|hash| hash.has_key?(id.to_s)}[0]
      end
    end

  end
end