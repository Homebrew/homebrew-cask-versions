cask :v1 => 'opera-developer' do
  version '30.0.1833.0'
  sha256 '0c79b262ec4d04324af52b6ed4550c2035fc8d8b8f978f27064f12d248cfd406'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
