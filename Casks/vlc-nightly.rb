cask 'vlc-nightly' do
  version :latest
  sha256 :no_check

  url 'http://nightlies.videolan.org/build/macosx-intel/last'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss

  depends_on macos: '>= :lion'

  app 'VLC.app'
end
