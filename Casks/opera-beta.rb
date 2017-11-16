cask 'opera-beta' do
  version '50.0.2762.9'
  sha256 'e08c5854d87f25e9ce8a045710447b48631f3625cd0f6ce4980ea7284b1e6783'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
