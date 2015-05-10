cask :v1 => 'opera-developer' do
  version '31.0.1857.0'
  sha256 '5cc4e281b9eefa679640acdbc7cf1a928c5758c3a1e2984acb5a682bd591952b'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
