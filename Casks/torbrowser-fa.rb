cask 'torbrowser-fa' do
  version '6.0.1'
  sha256 'c3d2058af7c622029badf95bc46c20754ee6f9ced2ccb0a47792434cbc3ee06b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
