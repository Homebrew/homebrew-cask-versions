cask 'opera-developer' do
  version '38.0.2213.0'
  sha256 '525b0f5f811792996721ba04a86dcc304fbdc2074cc2209aef14331d401aa42a'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
