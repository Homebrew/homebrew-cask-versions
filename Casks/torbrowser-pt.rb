cask 'torbrowser-pt' do
  version '6.0.3'
  sha256 '6901ecb5e962681280f1e396d0a24cc80fa90a25679210ce7f3bf42b7e72c5c5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
