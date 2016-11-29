cask 'mumble' do
  version '1.3.0~1703~gf47df77~snapshot'
  sha256 '37f206a8261c77652bf1500b91a538a906589480584967c9995186da16492aec'

  url "https://dl.mumble.info/Mumble-#{version}.dmg"
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'

  app 'Mumble.app'
end
