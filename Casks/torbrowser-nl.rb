cask 'torbrowser-nl' do
  version '5.5'
  sha256 'd6cc1c2777b39228ff3941eb3458d0c66bb8709db1505b2042f752bd57a0f5af'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
