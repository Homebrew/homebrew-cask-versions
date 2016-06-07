cask 'torbrowser-pl' do
  version '6.0.1'
  sha256 '2d036ca9476e655fb4ad98b038b60102bacfe689bd61e4fe5fa38958c4932fd9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
