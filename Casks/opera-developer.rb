cask 'opera-developer' do
  version '40.0.2306.0'
  sha256 'f230636c41587cfa2e28f85564b8fdd2b0f4f40d2c10edb50265ae76cec6bf63'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
