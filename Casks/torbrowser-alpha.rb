cask 'torbrowser-alpha' do
  version '7.5a5'
  sha256 'd6dd4420a6b3c9700c300aa1fb19604b22633d571bfd3506ff160afe8bfd6714'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
