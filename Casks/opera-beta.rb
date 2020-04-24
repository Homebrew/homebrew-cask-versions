cask 'opera-beta' do
  version '68.0.3618.55'
  sha256 '10bd94e1e58f6bfc83c998e043ec92dbe531546f592c6ce314a4d125964b7fc9'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
