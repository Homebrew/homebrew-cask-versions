cask 'opera-beta' do
  version '58.0.3135.30'
  sha256 '1558da4e2f009d100e7c69676b43f55135227067ed7d7daf1fde9f258414bb17'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
