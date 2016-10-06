cask 'torbrowser-fr' do
  version '6.0.4'
  sha256 '60d81816b4c1e975af9167dacce655c346b0d569c955ab72c11b76afb5147dee'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
