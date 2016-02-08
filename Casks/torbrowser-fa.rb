cask 'torbrowser-fa' do
  version '5.5.1'
  sha256 '4994868425d62bb2000d1718c05b3e5c164636a82fa8c2ad508d4b6150e45e3b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
