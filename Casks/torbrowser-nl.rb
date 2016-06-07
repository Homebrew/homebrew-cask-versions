cask 'torbrowser-nl' do
  version '6.0.1'
  sha256 'a3dc24c55b4122fe3b7fc0a43ca4dfb6bf5b848ce327eecb083c307bdc443e7e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
