cask :v1 => 'opera-developer' do
  version '35.0.2064.0'
  sha256 'e7d0067bbbf4b9353cfd3b1a884d92ad2a6f09058c5f73f9bbaa41dafce22549'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
