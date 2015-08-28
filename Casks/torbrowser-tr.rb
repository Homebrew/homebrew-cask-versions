cask :v1 => 'torbrowser-tr' do
  version '5.0.2'
  sha256 '43a8ff47bd40135aa9050d6dc3280d461865882daf02d955889375cbe986a11a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
