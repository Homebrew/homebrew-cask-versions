cask 'opera-beta' do
  version '55.0.2994.34'
  sha256 '3b54ab703728eac1e1829f6c532a884df6e8323c079d112cd968292eb6263dfb'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
