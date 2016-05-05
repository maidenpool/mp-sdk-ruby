#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #Deletes an existing purchase uniquely specified by `userId`, `itemId`, and `timestamp`.
  #
  class DeletePurchase < ApiRequest
    attr_reader :user_id, :item_id, :timestamp
    attr_accessor :timeout
  
  ##
  # * *Required arguments*
  #   - +user_id+ -> ID of the user who made the purchase.
  #   - +item_id+ -> ID of the item of which was purchased.
  #   - +timestamp+ -> Unix timestamp of the purchase.
  #
    def initialize(user_id, item_id, timestamp)
      @user_id = user_id
      @item_id = item_id
      @timestamp = timestamp
      @timeout = 1000
    end
  
    # HTTP method
    def method
      :delete
    end
  
    # Values of body parameters as a Hash
    def body_parameters
      p = Hash.new
      p
    end
  
    # Values of query path parameters as a Hash.
    # name of parameter => value of the parameter
    def query_parameters
      params = {}
      params['userId'] = @user_id
      params['itemId'] = @item_id
      params['timestamp'] = @timestamp
      params
    end
  
    # Relative path to the endpoint
    def basic_path
      "/{databaseId}/purchases/"
    end
  
    # Relative path to the endpoint including query parameters
    def path
      p = "/{databaseId}/purchases/?userId=#{@user_id}&itemId=#{@item_id}&timestamp=#{@timestamp}"
      p
    end
  end
end
