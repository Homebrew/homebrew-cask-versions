cask 'opensong-beta' do
  version '2.2-Beta'
  sha256 '5eada4246dee798e2b30da5be8f2d8643c7ce63cee7a535de3eac8bbc62b91dd'

  # sourceforge.net/opensong was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/opensong/OpenSongOSX-V#{version}.dmg"
  appcast 'https://sourceforge.net/projects/opensong/rss'
  name 'OpenSong'
  homepage 'http://www.opensong.org/'

  app 'OpenSongOSX.app'
end
