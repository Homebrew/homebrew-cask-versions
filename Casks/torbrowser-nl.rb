cask :v1 => 'torbrowser-nl' do
  version '5.0'
  sha256 'fbf1a643a281867ca99cd56bb4eec63d6d244e75b312f212d14ccb38d521f97b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
