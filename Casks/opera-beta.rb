cask 'opera-beta' do
  version '47.0.2631.28'
  sha256 '0220b3a5a437b6c41efbc66c1f201a99c3ad01fa71e11a1f16046387bf0592f8'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
