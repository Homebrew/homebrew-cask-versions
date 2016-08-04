cask 'vlc-nightly' do
  version :latest
  sha256 :no_check

  url 'http://nightlies.videolan.org/build/macosx-intel/last'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss

  depends_on macos: '>= :lion'
  container type: :dmg

  # Renamed to prevent conflict with current VLC, if installed.
  app 'VLC.app', target: 'VLC (Nightly).app'

  caveats "As prerelease software, #{token} could be unstable, defective or not run at all."
  caveats "While #{token} will install alonside a current VLC, they share preferences which could become corrupt and require resetting."
end
