cask 'torbrowser-pt' do
  version '6.0'
  sha256 '0394c1ee5752fd4ad51f26e65ad7e62128fd22c50c15131e74c9d7c45afdd8ee'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
