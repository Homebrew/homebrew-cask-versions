cask 'torbrowser-pt' do
  version '5.5.1'
  sha256 'ccf3b5a8641e1295426b8ef6808e5f71c2562fa2cd7c01a0f1466af3176af87b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
