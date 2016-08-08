cask 'torbrowser-fr' do
  version '6.0.3'
  sha256 '5906bb31cda2c514c8a3fb5b45b944a28ff7690fe23b85ea4a41e53c43734403'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
