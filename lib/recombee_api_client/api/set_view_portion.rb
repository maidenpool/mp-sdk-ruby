#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #The view portions feature is currently experimental.
  #
  #Sets viewed portion of an item (for example a video or article) by a user (at a session).
  #If you send new request with the same (`userId`, `itemId`, `sessionId`), the portion gets updated.
  #
  class SetViewPortion < ApiRequest
    attr_reader :user_id, :item_id, :portion, :session_id, :timestamp, :cascade_create
    attr_accessor :timeout
    attr_accessor :ensure_https
  
  ##
  # * *Required arguments*
  #   - +user_id+ -> User who viewed a portion of the item
  #   - +item_id+ -> Viewed item
  #   - +portion+ -> Viewed portion of the item (number between 0.0 (viewed nothing) and 1.0 (viewed full item) ).
  #
  # * *Optional arguments (given as hash optional)*
  #   - +sessionId+ -> Id of session in which the user viewed the item
  #   - +timestamp+ -> UTC timestamp of the rating as ISO8601-1 pattern or UTC epoch time. The default value is the current time.
  #   - +cascadeCreate+ -> Sets whether the given user/item should be created if not present in the database.
  #
    def initialize(user_id, item_id, portion, optional = {})
      @user_id = user_id
      @item_id = item_id
      @portion = portion
      @session_id = optional['sessionId']
      @timestamp = optional['timestamp']
      @cascade_create = optional['cascadeCreate']
      @optional = optional
      @timeout = 1000
      @ensure_https = false
      @optional.each do |par, _|
        fail UnknownOptionalParameter.new(par) unless ["sessionId","timestamp","cascadeCreate"].include? par
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
      p['portion'] = @portion
      p['sessionId'] = @optional['sessionId'] if @optional.include? 'sessionId'
      p['timestamp'] = @optional['timestamp'] if @optional.include? 'timestamp'
      p['cascadeCreate'] = @optional['cascadeCreate'] if @optional.include? 'cascadeCreate'
      p
    end
  
    # Values of query parameters as a Hash.
    # name of parameter => value of the parameter
    def query_parameters
      params = {}
      params
    end
  
    # Relative path to the endpoint
    def path
      "/{databaseId}/viewportions/"
    end
  end
end