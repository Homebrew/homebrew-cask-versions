cask 'torbrowser-nl' do
  version '5.5.2'
  sha256 '49f9950d57906c978178f446ea504633d19f71f6d5b39ce8270caceb7d8f1fdb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
