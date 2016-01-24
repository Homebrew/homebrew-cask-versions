cask 'opera-developer' do
  version '36.0.2114.0'
  sha256 '39ec2d423ffb8e3c76321bd48feee3bb27ca1b6956a4f63cc1efbf52e776e94e'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
