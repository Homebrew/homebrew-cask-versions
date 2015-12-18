cask 'torbrowser-es' do
  version '5.0.5'
  sha256 '5b27f5b97d473fe5f838d7c27a5f11ce2d0e50971e0b09f360dc109703542e04'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
