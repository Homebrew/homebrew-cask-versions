cask :v1 => 'opera-developer' do
  version '33.0.1982.0'
  sha256 'd9ad011e39909a249104a897dd91a369c440ace0c4dae684d0b35841de4f088d'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
