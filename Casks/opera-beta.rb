cask 'opera-beta' do
  version '69.0.3686.2'
  sha256 '675043994b1e39a13c5938142222ada2777c93c1aacf91063d36a4640ea563e5'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
