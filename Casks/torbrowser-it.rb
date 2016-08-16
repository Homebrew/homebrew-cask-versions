cask 'torbrowser-it' do
  version '6.0.4'
  sha256 '2c07b6003a48b4972895a0715f53ee8cc565491704a28ead089706ffa3c67d66'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
