cask :v1 => 'opera-developer' do
  version '33.0.1967.0'
  sha256 'e515623ac2f6f205205815a209a78325d9737b19f88014941c83361233249109'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
