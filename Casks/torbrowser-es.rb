cask :v1 => 'torbrowser-es' do
  version '5.0.4'
  sha256 '50144f038deb2a984ca2a9a3f237f5f4e3e5f612b6d974755a90603ed58f35bc'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
