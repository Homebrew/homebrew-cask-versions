cask 'torbrowser-pl' do
  version '5.5.2'
  sha256 'f845ab054ed85ba4bf896c682c18c00a46ed6fabbdb40848bc60d695fa5a2456'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
