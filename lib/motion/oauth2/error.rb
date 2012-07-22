module Motion
  class OAuth2
    class Error
      attr_accessor :raw, :code, :description, :url, :www_authenticate

      def initialize(body, www_authenticate_header = nil)
        self.raw = body
        self.www_authenticate = www_authenticate_header
        if oauth2_error?
          self.code = body['error'].to_sym
          self.description = body['description']
          self.url = body['error_url']
        else
          self.code = :unknown
        end
      end

      def oauth2_error?
        @body.is_a?(Hash) &&
        [
          'invalid_request',
          'invalid_token',
          'insufficient_scope'
        ].include?(body[:error])
      end
    end
  end
end