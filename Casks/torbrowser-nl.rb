cask 'torbrowser-nl' do
  version '6.0.2'
  sha256 'fe79d3f34d2b4c08fa2f25603892e57a81bdfc2437d89948f56655f5e5432dfe'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
