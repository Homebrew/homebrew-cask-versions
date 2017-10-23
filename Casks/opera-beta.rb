cask 'opera-beta' do
  version '49.0.2725.23'
  sha256 '8ec3d1f29944cd05acb97a9b26d73eaf12fd6b365305e281416b572b8666a200'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
