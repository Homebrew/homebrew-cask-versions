cask 'torbrowser-ar' do
  version '5.5.5'
  sha256 'e236a4fe73fb5fc5217c69719d2bce1275cf6cbf081c2e4ce59000f650992e34'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
