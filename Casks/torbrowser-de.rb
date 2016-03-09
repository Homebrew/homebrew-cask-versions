cask 'torbrowser-de' do
  version '5.5.3'
  sha256 '72e208335d597def30edd25b67d5ca1a2e09b7d440070a89cf1339e3f2f73b6e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
