require 'qudea_sdk/rest/base_request'

module QudeaSDK
  module REST
    class Call < BaseRequest

      def initialize(*args)
        super(*args)
        @resource = 'calls'
      end

      def create(params)
        prepare_request( 'post', @resource, params)
      end

    end
  end
end
