cask 'torbrowser-tr' do
  version '5.5'
  sha256 '80b8bb53cfc09ea0469be9287c16dd23ed802210d8fea3edc763332973d1e0ec'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
