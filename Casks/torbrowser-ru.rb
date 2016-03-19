cask 'torbrowser-ru' do
  version '5.5.4'
  sha256 '9b3e476150ec0de6e5326e4e433464d7641d8e22c176a45a11a73fa7e27543a0'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
