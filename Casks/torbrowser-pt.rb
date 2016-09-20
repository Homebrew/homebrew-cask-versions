cask 'torbrowser-pt' do
  version '6.0.5'
  sha256 '606f02e41eb1be0d345c80d1a462d8bfc21b1185ab268b134d69674f267106db'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
