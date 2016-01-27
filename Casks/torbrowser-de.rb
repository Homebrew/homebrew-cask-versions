cask 'torbrowser-de' do
  version '5.5'
  sha256 '86d96246a69414fa5fe3e390195431ef8e3dc1c7ddf4ffc59ff554cc4baf66e5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
