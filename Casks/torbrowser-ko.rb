cask 'torbrowser-ko' do
  version '6.0.2'
  sha256 '86d8840ed9ec752e742b06cb5523630897622c73206fc8fbcbb23a6fc7564db1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
