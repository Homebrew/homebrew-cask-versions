cask 'opera-beta' do
  version '50.0.2762.42'
  sha256 '0ae6866beb0047a2aebd22df7d2638f2d95ad8c08227879905d0e96e1add2235'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
