# NOTE:
#  FB doesn't support "Bearer" schema.
#  You need to specify "OAuth" schema as the optional 2nd argument here.
oauth2 = Motion::OAuth2.new(ACCESS_TOKEN, :OAuth)

oauth2.get 'https://graph.facebook.com/me' do |res|
  @res = res
  case
  when res.success?
    if res.json?
      puts "Hello #{res.body['name']}!" # => If response is JSON, it's automatically parsed.
    else
      puts res.body
    end
  when res.redirect?
    # ignore
  when res.error?
    puts res.body
    puts res.error.code # => OAuth2 error code as Symbol, or :unknown
    puts res.error.description # => OAuth2 error description, or nil
  end
end