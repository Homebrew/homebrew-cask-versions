class VlcNightly < Cask
  url 'http://nightlies.videolan.org/build/macosx-intel/last'
  homepage 'http://www.videolan.org/vlc/'
  version 'latest'
  sha256 :no_check
  link 'vlc-2.2.0-git/VLC.app'
end
