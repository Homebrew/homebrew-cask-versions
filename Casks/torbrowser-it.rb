cask 'torbrowser-it' do
  version '5.5.5'
  sha256 '9075f28105042e0e8c6018f894f58a1ecb2963d5b40d6f0ab951de579481f784'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
