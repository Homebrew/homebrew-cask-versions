cask :v1 => 'myo-connect' do
  version '0.6.0'
  sha256 'a259b2812285d104ea0f9f48b8a550e1a674ec2377591d950578e185e2b02d5d'

  url 'https://s3.amazonaws.com/thalmicdownloads/mac/0.6.0/MyoConnect.dmg'
  homepage 'https://developer.thalmic.com'
  license :unknown
  tags :vendor => 'Thalmic Labs'

  app 'Myo Connect.app'

  zap :delete=> [
                '~/Library/Preferences/com.thalmic.Myo Connect.plist'
                ]
end
