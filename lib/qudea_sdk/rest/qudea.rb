require 'qudea_sdk/rest/base_request'

module QudeaSDK
  module REST
    class Qudea < BaseRequest

      def initialize(*args)
        super(*args)
      end

      def me
        prepare_request( 'get', 'me')
      end

      def call
        QudeaSDK::REST::Call.new(@api_token, @account_id)
      end
    end
  end
end
