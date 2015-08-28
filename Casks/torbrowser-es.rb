cask :v1 => 'torbrowser-es' do
  version '5.0.2'
  sha256 '33dde2084d0559b948155f7c259ccf0ff70490ba10cebf1f2c9eba04ac0417dc'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
