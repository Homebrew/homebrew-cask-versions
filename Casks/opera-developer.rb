cask 'opera-developer' do
  version '36.0.2120.0'
  sha256 'af074a855937f8f36a000b8ad59d9928a6441ca6dabf6d92d41f3df65d2e58b1'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
