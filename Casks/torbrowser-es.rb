cask 'torbrowser-es' do
  version '5.0.7'
  sha256 '3d293c4b5f093b39e68e35a1c9083f12aab35d6c22f90a38a4760d6b178d4e85'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
