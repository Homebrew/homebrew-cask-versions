cask 'torbrowser-fr' do
  version '5.5.1'
  sha256 '0bcaa7b5a592e5133ea905ebb9cc17221237c95f149a9ee5e2c4af57d23c2eb9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
