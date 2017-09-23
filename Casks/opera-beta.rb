cask 'opera-beta' do
  version '48.0.2685.26'
  sha256 '3ed1a02dfe11f199ee48dca2e83e27c0baab5dd536918ab9610db06b06261b07'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
