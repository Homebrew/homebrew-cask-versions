cask 'torbrowser-de' do
  version '6.0.1'
  sha256 'e8477d56cec341c6a491d5d10a1c6442454bf4c796fd3ac71253fa8a93556ace'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
