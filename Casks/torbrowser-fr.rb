cask 'torbrowser-fr' do
  version '6.0.5'
  sha256 '64296b0694753ff5ce44f95f3b6c357f4b00d38794d783ff5b18a74fe166f88d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
