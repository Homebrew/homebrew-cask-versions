cask 'torbrowser-it' do
  version '5.0.7'
  sha256 'a88a51afbfb7e86d229009302754a066a141a74a97c84054b99db1b0b7a208b5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
