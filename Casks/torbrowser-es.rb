cask 'torbrowser-es' do
  version '5.5.4'
  sha256 '2b35ebda6109830b93612ad486e70950575abc3bfaecd3de8e6b260e9eb6abe8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
