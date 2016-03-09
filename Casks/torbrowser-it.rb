cask 'torbrowser-it' do
  version '5.5.3'
  sha256 '0798d9c6772bf724b6d5afea9fb39bc390374b9f13974bfe54972c6a3e4df7c9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
