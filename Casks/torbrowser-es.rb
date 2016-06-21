cask 'torbrowser-es' do
  version '6.0.2'
  sha256 '6c69666f3db0dc7593f4f0489ec980eea318e3601ea618bd0006fe6bdc249107'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
