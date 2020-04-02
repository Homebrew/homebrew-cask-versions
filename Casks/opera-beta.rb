cask 'opera-beta' do
  version '68.0.3618.31'
  sha256 '2a001da49e5953d0489db7a656bc5707b1061fa8cb4e9fa39943527ca26c5965'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
