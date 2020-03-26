cask 'opera-beta' do
  version '68.0.3618.24'
  sha256 '4f9c8462c7debd5a085b1b777f0344b2da4f9e3741a5d612ffd54754fb1fff5e'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
