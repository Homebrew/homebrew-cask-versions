cask 'torbrowser-pl' do
  version '6.0.4'
  sha256 '96afb7def95e00d34961e75b1e3a2a784a7b85df8838ea90344f3a4ff834817b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
