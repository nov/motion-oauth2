module Motion
  module OAuth2
    def initWithAccessToken(access_token)
      @access_token = access_token
    end

    def get(url, params = {}, headers = {})
      puts "OAuth2 GET with #{access_token}"
      BubbleWrap::HTTP.get url, params, headers.merge(Authorization: "Bearer #{access_token}") do |response|
        yield response
      end
    end
  end
end