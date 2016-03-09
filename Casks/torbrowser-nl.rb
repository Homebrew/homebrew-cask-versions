cask 'torbrowser-nl' do
  version '5.5.3'
  sha256 '01255616632658db8beaa02233cb3f508a729afdc8ed2f6caea3bede1529f3c1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
