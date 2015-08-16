cask :v1 => 'torbrowser-de' do
  version '5.0'
  sha256 '8ddcef5f991ef6883d131178cb186dc7713d7fd6c3dc2c3f84c280b4789ebc69'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
