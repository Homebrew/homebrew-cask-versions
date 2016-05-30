cask 'torbrowser-fa' do
  version '6.0'
  sha256 '7c29d40f76afcb73c4e3dd8338ea94e376140871de979cebbce1bf21d4170c2d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
