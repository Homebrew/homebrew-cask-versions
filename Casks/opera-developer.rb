cask 'opera-developer' do
  version '36.0.2129.0'
  sha256 '06febc2f8129bb26d7f4a9c6b949034b86c7758d269bcd0a8cfd18488a66bda8'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
