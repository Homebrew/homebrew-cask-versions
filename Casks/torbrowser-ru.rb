cask 'torbrowser-ru' do
  version '5.5'
  sha256 '2a6bc5889c88811ba23d70b474b17772f24e1f8c3118d67da63744f771d4ff67'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
