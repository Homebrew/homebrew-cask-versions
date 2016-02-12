cask 'torbrowser-de' do
  version '5.5.2'
  sha256 'cb464791c1eb2b6bb9d8421e575d438cfedfc09b7cd164c49d9151c8e3a8f9d6'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
