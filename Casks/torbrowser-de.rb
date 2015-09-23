cask :v1 => 'torbrowser-de' do
  version '5.0.3'
  sha256 '547ed7f67c29e9ea01f120ad0f89fbf54ed76218d740f5415e4f9d35bfb15c1b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
