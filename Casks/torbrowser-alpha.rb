cask 'torbrowser-alpha' do
  version '7.0a1'
  sha256 '4e4df787da9620be81efd57e0a3835757ccf5e749a726f389f88d03b8a3127fb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
