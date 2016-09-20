cask 'torbrowser-de' do
  version '6.0.5'
  sha256 '85663a210c0f8efb8f637e35fdfc0efa23f910ad8e4c4be2cfe097c0a3ee8429'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
