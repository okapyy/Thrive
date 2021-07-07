module OmniauthMocks
  def facebook_mock
    OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
      provider: 'facebook',
      uid: '1234567',
      info: {
        email: 'joe@bloggs.com',
        name: '岡田 明日香',
        first_name: '岡田',
        last_name: '明日香',
        image: 'http://graph.facebook.com/1234567/picture?type=square',
        verified: true
      },
      credentials: {
        token: 'ABCDEF...',
        expires_at: 1321747205,
        expires: true
      },
      extra: {
        raw_info: {
          id: '1234567',
          name: '岡田 明日香',
          first_name: '岡田',
          last_name: '明日香',
          link: 'http://www.facebook.com/okapy',
          username: 'okapy',
          location: { id: '123456789', name: 'Osaka, Japan' },
          gender: 'male',
          email: 'joe@bloggs.com',
          timezone: -8,
          locale: 'en_US',
          verified: true,
          updated_time: '2011-11-11T06:21:03+0000',
        }
      }
    })
  end
  
  def google_oauth2_mock
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
      provider: "google_oauth2",
      uid: "100000000000000000000",
      info: {
        name: "John Smith",
        email: "john@example.com",
        first_name: "John",
        last_name: "Smith",
        image: "https://lh4.googleusercontent.com/photo.jpg",
        urls: {
          google: "https://plus.google.com/+JohnSmith"
        }
      },
      credentials: {
        token: "TOKEN",
        refresh_token: "REFRESH_TOKEN",
        expires_at: 1496120719,
        expires: true
      },
      extra: {
        id_token: "ID_TOKEN",
        id_info: {
          azp: "APP_ID",
          aud: "APP_ID",
          sub: "100000000000000000000",
          email: "john@example.com",
          email_verified: true,
          at_hash: "HK6E_P6Dh8Y93mRNtsDB1Q",
          iss: "accounts.google.com",
          iat: 1496117119,
          exp: 1496120719
        },
        raw_info: {
          sub: "100000000000000000000",
          name: "John Smith",
          given_name: "John",
          family_name: "Smith",
          profile: "https://plus.google.com/+JohnSmith",
          picture: "https://lh4.googleusercontent.com/photo.jpg?sz=50",
          email: "john@example.com",
          email_verified: "true",
          locale: "en",
          hd: "company.com"
        }
      }
    })
  end
end
