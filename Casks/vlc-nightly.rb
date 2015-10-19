cask :v1 => 'vlc-nightly' do
  version :latest
  sha256 :no_check

  url 'http://nightlies.videolan.org/build/macosx-intel/last'
  name 'VLC'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss

  app 'vlc-3.0.0-git/VLC.app'
end
