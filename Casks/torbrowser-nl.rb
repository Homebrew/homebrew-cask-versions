cask 'torbrowser-nl' do
  version '5.5.5'
  sha256 'dd6a16d9f116891ff33b46f7c7d90fae3d81abe75a8ba46103a12ac5d892971b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
