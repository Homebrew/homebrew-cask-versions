cask 'opera-beta' do
  version '50.0.2762.4'
  sha256 'cb0393fca8ce46f1d70c879451f2dd8cd2dfe14b6d6512fd269a21cfea6aaaf8'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
