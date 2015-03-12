cask :v1 => 'opera-developer' do
  version '29.0.1795.0'
  sha256 '33b33c56d079c524e43e41ff588f3cfa6bc3481f87f4c4705623220464462023'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
