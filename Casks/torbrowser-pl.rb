cask 'torbrowser-pl' do
  version '5.5.4'
  sha256 '0faa56ff286408e7b26bd3df035adc2174790518bf6adbb28b115e4fb3759511'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
