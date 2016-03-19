cask 'torbrowser-fa' do
  version '5.5.4'
  sha256 'b780fa10de6804220bae54d64a94e749ee40902ad7a44ed0af407ef872ea1c22'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
