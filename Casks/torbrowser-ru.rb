cask 'torbrowser-ru' do
  version '6.0.4'
  sha256 '2692382a3df09533811e11ea9cbc85442a2fbbbc5f5702a2acc158a97eb0bd8b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
