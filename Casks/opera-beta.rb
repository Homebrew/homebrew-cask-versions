cask 'opera-beta' do
  version '67.0.3575.28'
  sha256 '5de30ce0bad6b360cc0f52e130c089cd5834afc4d3b1a31a77b5a40edbd7b7c6'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
