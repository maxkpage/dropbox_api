module DropboxApiV2::Endpoints::Files
  class Move < DropboxApiV2::Endpoints::Rpc
    Method      = :post
    Path        = "/2/files/move".freeze
    ResultType  = DropboxApiV2::Metadata::Resource
    ErrorType   = DropboxApiV2::Errors::RelocationError

    # @method move(from, to)
    # Move a file or folder to a different location in the user's Dropbox.
    #
    # If the source path is a folder all its contents will be moved.
    #
    # @param from [String] Path in the user's Dropbox to be copied or moved.
    # @param to [String] Path in the user's Dropbox that is the destination.
    add_endpoint :move do |from, to|
      perform_request({
        :from_path => from,
        :to_path => to
      })
    end
  end
end
