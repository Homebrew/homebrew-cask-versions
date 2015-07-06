cask :v1 => 'torbrowser-nl' do
  version '4.5.3'
  sha256 'f6328227a889fa7944700ade2501dc775b520708fcd7809ecf717dde36cffed1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
