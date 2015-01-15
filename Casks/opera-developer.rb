cask :v1 => 'opera-developer' do
  version '28.0.1738.0'
  sha256 'c489d8fb4e5c514c9a072df41c935164f03f89e64abc752a5995921648da8914'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
