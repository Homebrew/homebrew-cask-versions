cask 'torbrowser-alpha' do
  version '6.5a2'
  sha256 '4ba0d6430941d168914325c5f4f8dc6a8b853c12c0892248e81679a8e83766ae'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
