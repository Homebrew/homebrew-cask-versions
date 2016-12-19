cask 'mumble' do
  version '1.3.0~1797~g6ac0553~snapshot'
  sha256 'd07ec0dc0cdcfbd2e96757b77a968a6bd078e39f3c74b7485ff8b465e1e0815c'

  url "https://dl.mumble.info/Mumble-#{version}.dmg"
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'

  app 'Mumble.app'
end
