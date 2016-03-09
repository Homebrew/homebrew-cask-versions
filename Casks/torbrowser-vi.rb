cask 'torbrowser-vi' do
  version '5.5.3'
  sha256 '0e8d456ac11b39fe2f01e13454510407f30172cd9cf7d792415713a8efa88770'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
