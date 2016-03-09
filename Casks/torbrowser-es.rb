cask 'torbrowser-es' do
  version '5.5.3'
  sha256 '9e00e098e61dbbcd3464c9db2ad2ecad05c3809add6a521f6f882c3fb6c525c7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
