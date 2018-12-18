cask 'opera-beta' do
  version '58.0.3135.26'
  sha256 'fa6d36564bd5b3510478b4ea8d3ed1c5b0f49a917086c6e16ea2b765aa4ef1b6'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
