cask 'torbrowser-it' do
  version '5.5'
  sha256 'cbae6194d0d2fce53880aec29d4aa54cd176886dd3c3d0e0d709812bb637c081'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
