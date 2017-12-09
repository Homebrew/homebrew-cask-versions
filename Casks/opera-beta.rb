cask 'opera-beta' do
  version '50.0.2762.28'
  sha256 '24343c2aef30af82252c10c5e732ff54d1de0726e81408f3fca55a515fe723fe'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
