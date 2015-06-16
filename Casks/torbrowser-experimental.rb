cask :v1 => 'torbrowser-experimental' do
  version '5.0a2'
  sha256 '4bf5d27b592f4221c5996f1241a428402f1621c2576cb8772438d5f7c3fce320'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
