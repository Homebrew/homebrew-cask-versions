cask 'opera-beta' do
  version '51.0.2830.16'
  sha256 '4a12fafa8ee10e5d7d46e34206c7db8734a0eb5bc1474c6378c40127410b7a74'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
