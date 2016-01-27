cask 'torbrowser-pl' do
  version '5.5'
  sha256 '0b82d741e3bf9ac5a10aad6be4ec820d185494700637d0e4c972ba1729b3a451'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
