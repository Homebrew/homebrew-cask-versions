cask 'torbrowser-it' do
  version '6.0.5'
  sha256 '088ea61fed53dbded627dc95ef1c4610e0dfbcb7ef365f7af8ec45af9723f833'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
