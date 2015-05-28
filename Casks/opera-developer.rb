cask :v1 => 'opera-developer' do
  version '31.0.1876.0'
  sha256 '0e3a47d30e13d6c94aafb272fbec7dd1ccc781c20882ee0fb36eec89fce86fa3'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
