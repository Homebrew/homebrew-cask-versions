cask 'torbrowser-tr' do
  version '6.0.1'
  sha256 '64bbdf1c84446a4e6b7a7be1496700c3e6f9b6ac66f86f74a1faba67350ca001'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
