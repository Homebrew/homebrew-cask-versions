cask 'torbrowser-pl' do
  version '6.0.3'
  sha256 '6b4b0a5743a597b5397f4586e8359d68e5c94797500258c179875d94358c10f2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
