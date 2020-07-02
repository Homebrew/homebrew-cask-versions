cask 'opera-beta' do
  version '70.0.3728.8'
  sha256 '3a618015b85812719b6443a5eac559868de383cd97711d5ccb8b1357ceec4d5f'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
