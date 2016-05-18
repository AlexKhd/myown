module OmniauthTestHelper
  def valid_facebook_login_setup
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
        provider: 'facebook',
        uid: '9876543221',
        info: {
          first_name: "Gaius",
          last_name:  "Baltar",
          email:      "test@example.com"
        },
        credentials: {
          token: "123456",
          expires_at: Time.now + 1.week
        },
        extra: {
          raw_info: {
            gender: 'male',
            name: 'Facebook Name'
          }
        }
      })
  end
end
