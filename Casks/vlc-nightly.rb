cask 'vlc-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://nightlies.videolan.org/build/macosx-intel/last/'
    file = URI(base_url).open.read.scan(%r{href="([^"]+.dmg)"}).flatten.first
    "#{base_url}#{file}"
  end
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'

  depends_on macos: '>= :lion'

  app 'VLC.app'
end
