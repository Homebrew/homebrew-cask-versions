cask :v1 => 'torbrowser-fr' do
  version '5.0.5'
  sha256 '3287c90feef23b4a9faf6b85bf4fefc512e4087f47e75f4bd66a1c2ab7911047'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
