cask 'torbrowser-de' do
  version '5.5.4'
  sha256 'dfb0d4e7fae46f8e70ccdd44d0649de2946cf700e0b208ab2f1d45265c7ed987'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
