cask 'torbrowser-alpha' do
  version '7.5a4'
  sha256 '2ea60290d03ffbf1426702ef9bd1b7e428d3b29a00867bfea1de6b2aeb9ff91e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
