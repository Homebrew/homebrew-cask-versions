cask :v1 => 'opera-developer' do
  version '30.0.1820.0'
  sha256 'ea0adb5c2e4c215ccdd784222b0432546137649eec3bc7c829d76662bd2326c8'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
