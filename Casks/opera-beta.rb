cask 'opera-beta' do
  version '50.0.2762.14'
  sha256 '7d84266d3deea60ed147c5c31dc236b161997c7eb84e99fc2c1e7d5a555569d3'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
