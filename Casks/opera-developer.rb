cask :v1 => 'opera-developer' do
  version '35.0.2060.0'
  sha256 'aa639c67c59809c2ebdce90d232f00c541f9f6b8801fb6e7fc2518f4539bae19'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
