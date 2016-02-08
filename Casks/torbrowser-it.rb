cask 'torbrowser-it' do
  version '5.5.1'
  sha256 'f3e36ec0bfb0b23dd3d474d8d77e1e42a238c794781064a50a19fa6ac7214fee'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
