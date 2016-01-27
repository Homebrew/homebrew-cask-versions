cask 'torbrowser-fr' do
  version '5.5'
  sha256 'f5a72a9d94afa9cef71378213c2ca8936cef1d3f8427d7e67fc1b802df43d015'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
