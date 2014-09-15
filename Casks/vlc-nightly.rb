class VlcNightly < Cask
  version 'latest'
  sha256 :no_check

  url 'http://nightlies.videolan.org/build/macosx-intel/last'
  homepage 'http://www.videolan.org/vlc/'

  app 'vlc-3.0.0-git/VLC.app'
end
