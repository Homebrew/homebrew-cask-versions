cask 'opera-developer' do
  version '50.0.2729.0'
  sha256 'e3efa0158e495e173c928f2c6c1dcd1da3b02e7b8bf0c199c80d15a29abda3b9'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
