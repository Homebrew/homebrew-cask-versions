cask 'opera-beta' do
  version '68.0.3618.41'
  sha256 '81e4fa9749beda031aa906e1a2861f7abb497e84732395d054958d23dae80a7a'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
