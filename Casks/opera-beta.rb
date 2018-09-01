cask 'opera-beta' do
  version '56.0.3051.10'
  sha256 '991e7de2a15e845d43f5fb984ea72bec522ab64b219ff1975b5826c3d2ead57b'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
