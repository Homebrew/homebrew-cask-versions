cask 'torbrowser-alpha' do
  version '7.5a6'
  sha256 '8c5efca1fef27fa74f2feea0f1208244876cd9d55ed941ed348364a0b514ef0e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
