cask 'torbrowser-it' do
  version '6.0'
  sha256 'ded254f2bbeab9cf4556244c9e448cad161bdf6076b84f3c8acaea7f3f3604a3'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
