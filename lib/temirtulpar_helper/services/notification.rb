require 'net/http'

module TemirtulparHelper
  module Services
    class Notification
      attr_reader :id, :type, :msg

      def initialize(id, type, msg)
        @id = id
        @type = type
        @msg = msg
      end

      def send
        uri = URI.parse('http://ntf.temirtulpar.com/snd')
        request = Net::HTTP::Post.new(uri)
        request.content_type = 'application/json'
        request.body = JSON.dump({
          type: type,
          id: id,
          msg: msg
        })

        req_options = {use_ssl: uri.scheme == 'https'}

        Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
      end
    end
  end
end
