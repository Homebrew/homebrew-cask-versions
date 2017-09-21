cask 'opera-developer' do
  version '49.0.2720.0'
  sha256 'b9579b26ad5aba3a4e030a4c757dfe1350c8731a12c8fca1851f02d025057330'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Developer.app'
end
