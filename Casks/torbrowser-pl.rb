cask 'torbrowser-pl' do
  version '6.0.2'
  sha256 'e541ba590069773e8e2f74b366451cc2112f01aaefbaf97033c437afc94783c3'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
