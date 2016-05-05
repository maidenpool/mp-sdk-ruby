#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #Adds a purchase of a given item made by a given user.
  #
  class AddPurchase < ApiRequest
    attr_reader :user_id, :item_id, :timestamp, :cascade_create
    attr_accessor :timeout
  
  ##
  # * *Required arguments*
  #   - +user_id+ -> User who purchased the item
  #   - +item_id+ -> Purchased item
  #   - +timestamp+ -> Unix timestamp of the purchase. If you don't have the timestamp value available, you may use some artificial value, such as 0. It is preferable, however, to provide the timestamp whenever possible as the user's preferences may evolve over time.
  #
  # * *Optional arguments (given as hash optional)*
  #   - +cascadeCreate+ -> Sets whether the given user/item should be created if not present in the database.
  #
    def initialize(user_id, item_id, timestamp, optional = {})
      @user_id = user_id
      @item_id = item_id
      @timestamp = timestamp
      @cascade_create = optional['cascadeCreate']
      @optional = optional
      @timeout = 1000
      @optional.each do |par, _|
        fail UnknownOptionalParameter.new(par) unless ["cascadeCreate"].include? par
      end
    end
  
    # HTTP method
    def method
      :post
    end
  
    # Values of body parameters as a Hash
    def body_parameters
      p = Hash.new
      p['userId'] = @user_id
      p['itemId'] = @item_id
      p['timestamp'] = @timestamp
      p['cascadeCreate'] = @optional['cascadeCreate'] if @optional['cascadeCreate']
      p
    end
  
    # Values of query path parameters as a Hash.
    # name of parameter => value of the parameter
    def query_parameters
      params = {}
      params
    end
  
    # Relative path to the endpoint
    def basic_path
      "/{databaseId}/purchases/"
    end
  
    # Relative path to the endpoint including query parameters
    def path
      p = "/{databaseId}/purchases/"
      p
    end
  end
end
